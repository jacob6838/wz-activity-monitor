import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wzam/controllers/notification_controller.dart';
import 'package:wzam/models/report.dart';
import 'package:wzam/models/wzdx_models.dart';
import 'package:wzam/services/file_storage.dart';
import 'package:wzam/ui/pages/report_location_selection.dart';
import 'package:wzam/ui/styles/screen_size.dart';
import 'package:wzam/ui/styles/spacing.dart';
import 'package:wzam/ui/styles/widgets/wzam_app_bar.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class ReportPageController extends GetxController {
  RxList<List<double>> points = <List<double>>[].obs;
  String areaType = "";
  GeometryType geometryType = GeometryType.multipoint;
  String surfaceType = "";
  double lineWidth = 30.0;
  RxBool waitingOnReportPost = false.obs;
}

//This is the report page where the user can generate a report
class ReportPage extends StatelessWidget {

  final FileStorageService fileStorageService = Get.find<FileStorageService>();
  final ReportPageController controller = Get.put(ReportPageController());
  final List<Widget> formFields = [];
  final TextEditingController projectIdController = TextEditingController();
  final TextEditingController segmentIdController = TextEditingController();
  final TextEditingController areaIdController = TextEditingController();
  final TextEditingController reportNameController = TextEditingController();
  final RxBool areWorkersPresent = false.obs;
  final List workTypeNameList = [["",false]];
  final TextEditingController startDateController = TextEditingController();
  final TextEditingController endDateController = TextEditingController();
  final TextEditingController reportDateController = TextEditingController();
  final TextEditingController mobilitySpeedController = TextEditingController();

  final TextEditingController startDate = TextEditingController();
  final TextEditingController endDate = TextEditingController();
  final TextEditingController reportDate = TextEditingController();

  final TextEditingController license_plate = TextEditingController();
  
  ReportPage({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> areaTypes = _getAreaTypes();
    List<String> workTypeNames = _getWorkTypeNames();
    //List<String> geometryTypes = _getGeometryTypes();
    RxList<Widget> workTypeSegments = <Widget>[
      ..._workTypeSegment(context, workTypeNames, 0),
    ].obs;
    List<String> surfaceType = _getSurfaceTypes();


    return Scaffold(
      appBar: WZAMAppBar(
        title: "Generate a Report",
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Obx(() => Stack(
          children: [
            ListView(children: [
            verticalSpaceMedium,
            _inputField("Project ID", projectIdController, isNumeric: true), //optional
            verticalSpaceMedium,
            _inputField("Segment ID", segmentIdController, isNumeric: true), //optional
            verticalSpaceMedium,
            _inputField("Area ID", areaIdController, isNumeric: true), //optional
            verticalSpaceMedium,
            _inputField("Report Name", reportNameController, isRequired: true),
            Obx(() => Row(
              children: [
                const Text("Are Workers Present?"),
                Checkbox(
                  value: areWorkersPresent.value,
                  onChanged: (value) {
                    areWorkersPresent.value = value!;
                  },
                ),
              ],
            )),
            verticalSpaceMedium,
            ...workTypeSegments,
            ElevatedButton(
              onPressed: () {
                workTypeNameList.add(["",false]);
                workTypeSegments = workTypeSegments + _workTypeSegment(context, workTypeNames, workTypeNameList.length - 1);
              },
              child: const Text("Add Another Type of Work"),
            ),
            verticalSpaceMedium,
            _inputField("Start Date", startDateController, isDate: true, dateStorage: startDate, context: context), //optional
            verticalSpaceMedium,
            _inputField("End Date", endDateController, isDate: true, dateStorage: endDate, context: context), //optional
            verticalSpaceMedium,
            _inputField("Report Date", reportDateController, isDate: true, dateStorage: reportDate, isRequired: true, context: context), 
            verticalSpaceMedium,
            _dropdownField("Area Type", areaTypes, context, isAreaWorkType: true),
            verticalSpaceMedium,
            _inputField("Mobility Speed (MPH)", mobilitySpeedController, isDouble: true), //optional
            verticalSpaceMedium,
            //_dropdownField("Geometry Type", geometryTypes, context, isGeometryType: true), //TODO: Get rid of
            //verticalSpaceMedium,
            _dropdownField("Surface Type", surfaceType, context, isSurfaceType: true),
            verticalSpaceMedium,
            _inputField("License Plate", license_plate),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const ReportLocationSelection());
              },
              child: controller.points.isEmpty ? const Text("Select Activty Location") : Text("Change Activity Location"),
            ),
            verticalSpaceSmall,
            Container(  
              height: 3,
              decoration: BoxDecoration(
                color: Colors.black,
            )),
            verticalSpaceSmall,
            _submitButton(),
          ]),
          if (controller.waitingOnReportPost.value) const Center(child: CircularProgressIndicator()),
          ],
        )),
      ));
  }

  Widget _inputField(String labelText, TextEditingController controller, {bool isNumeric = false, bool isDate = false, TextEditingController? dateStorage, bool isRequired = false, bool isDouble = false, BuildContext? context}) {
    return TextField(
      decoration: InputDecoration(
        labelText: isRequired ? labelText : "$labelText (optional)",
      ),
      controller: controller,
      keyboardType: isNumeric || isDouble ? const TextInputType.numberWithOptions(decimal: true) : TextInputType.text,
      inputFormatters: isNumeric ? <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ] : isDouble ? <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*'))
      ] : null,
      readOnly: isDate,
      onTap: isDate ? () async {
        DateTime? pickedDate = await showDatePicker(
          context: context!,
          initialDate: DateTime.now(), 
          firstDate: DateTime(2000),
          lastDate: DateTime(2101),
        );
        if (pickedDate != null) {
          controller.text = "${pickedDate.toLocal()}".split(' ')[0];
          TimeOfDay? pickedTime = await showTimePicker(
            context: context,
            initialTime: const TimeOfDay(hour: 8, minute: 0),
          );
          if (pickedTime != null) {
            DateTime finalDateTime = DateTime(pickedDate.year, pickedDate.month, pickedDate.day, pickedTime.hour, pickedTime.minute);
            String formattedDate = DateFormat.yMd().add_jm().format(finalDateTime);
            dateStorage?.text = finalDateTime.toString();
            controller.text = formattedDate;
          }
        }
      } : null,
      onChanged: (value) async {
        // Handle changes if needed
      },
    );
  }

  Widget _dropdownField(String labelText, List<String> optionsList, BuildContext context, {int? index, bool isAreaWorkType = false, bool isGeometryType = false, bool isSurfaceType = false}) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      isExpanded: true,
      menuMaxHeight: screenHeightPercentage(context, percentage: 0.5),
      dropdownColor: Theme.of(context).dialogBackgroundColor,
      items: optionsList.map((e) => DropdownMenuItem(
        value: e,
        child: Text(e),
      )).toList(),
      onChanged: (value) async {
        if (isAreaWorkType) {
          controller.areaType = value.toString();
        } else if (isGeometryType) {
          //controller.geometryType = value
        } else if (isSurfaceType) {
          controller.surfaceType = value.toString();
        } else {
          workTypeNameList[index!][0] = value.toString();
        }
      }
    );
  }

  List<Widget> _workTypeSegment(BuildContext context, List<String> workTypeNames, int index) {
    RxBool isArchitecturalChange = false.obs;
    return [
      _dropdownField("Type of Work", workTypeNames, context, index: index),
      Obx(() => Row(
        children: [
          const Text("Is there an Architectural Change?"),
          Checkbox(
            value: isArchitecturalChange.value,
            onChanged: (value) {
              isArchitecturalChange.value = value!;
              workTypeNameList[index][1] = value;
            },
          ),
        ],
      )),
    ];
  }

  ElevatedButton _submitButton() {
    return ElevatedButton(
      onPressed: () async {
        if (!_fieldsValid()) {
          return;
        }
        await _saveReport();
      },
      child: const Text("Submit Report"),
    );
  }

  bool _fieldsValid() {
    if (reportNameController.text == "") {
      NotificationController().queueNotification('Invalid Report', 'One or more required fields are missing');
      return false;
    }
    if (workTypeNameList[0][0] == "") {
      NotificationController().queueNotification('Invalid Report', 'One or more required fields are missing');
      return false;
    }
    if (reportDateController.text == "") {
      NotificationController().queueNotification('Invalid Report', 'One or more required fields are missing');
      return false;
    }
    if (controller.areaType == "") {
      NotificationController().queueNotification('Invalid Report', 'One or more required fields are missing');
      return false;
    }
    if (controller.geometryType == "") {
      NotificationController().queueNotification('Invalid Report', 'One or more required fields are missing');
      return false;
    }
    if (controller.points.isEmpty) {
      NotificationController().queueNotification('Invalid Report', 'One or more required fields are missing');
      return false;
    }
    return true;
  }

  List<String> _getAreaTypes() {
    List<WorkZoneType> workZoneTypeOptions = WorkZoneType.values;
    List<String> areaTypes = [];
    for (WorkZoneType type in workZoneTypeOptions) {
      switch (type) {
        case WorkZoneType.static:
          areaTypes.add('static');
        case WorkZoneType.moving:
          areaTypes.add('moving');
        case WorkZoneType.plannedMovingArea:
          areaTypes.add('planned_moving_area');
        default:
          areaTypes.add('unknown');
      }
    }
    return areaTypes;
  }

  List<String> _getSurfaceTypes() {
    List<RoadSegmentSurfaceType> surfaceTypeOptions = RoadSegmentSurfaceType.values;
    List<String> surfaceTypes = [];
    for (RoadSegmentSurfaceType type in surfaceTypeOptions) {
      switch (type) {
        case RoadSegmentSurfaceType.paved:
          surfaceTypes.add('paved');
        case RoadSegmentSurfaceType.gravel:
          surfaceTypes.add('gravel');
        case RoadSegmentSurfaceType.dirt:
          surfaceTypes.add('dirt');
        case RoadSegmentSurfaceType.grooved:
          surfaceTypes.add('grooved');
        default:
          surfaceTypes.add('unknown');
      }
    }
    return surfaceTypes;
  }

  WorkZoneType _stringToWorkZoneType(String type) {
    switch (type) {
      case 'static':
        return WorkZoneType.static;
      case 'moving':
        return WorkZoneType.moving;
      case 'planned_moving_area':
        return WorkZoneType.plannedMovingArea;
      default:
        throw ArgumentError('Invalid WorkZoneType: $type');
    }
  }

  List<String> _getWorkTypeNames() {
    List<WorkTypeName> workTypeNameOptions = WorkTypeName.values; //TODO get rid of this and use .toString().split('.').last instead
    List<String> workTypeNamesStr = [];
    for (WorkTypeName type in workTypeNameOptions) {
      switch (type) {
        case WorkTypeName.maintenance:
          workTypeNamesStr.add('maintenance');
        case WorkTypeName.minorRoadDefectRepair:
          workTypeNamesStr.add('minor road defect repair');
        case WorkTypeName.roadsideWork:
          workTypeNamesStr.add('roadside work');
        case WorkTypeName.overheadWork:
          workTypeNamesStr.add('overhead work');
        case WorkTypeName.belowRoadWork:
          workTypeNamesStr.add('below road work');
        case WorkTypeName.barrierWork:
          workTypeNamesStr.add('barrier work');
        case WorkTypeName.surfaceWork:
          workTypeNamesStr.add('surface work');
        case WorkTypeName.painting:
          workTypeNamesStr.add('painting');
        case WorkTypeName.roadwayRelocation:
          workTypeNamesStr.add('roadway relocation');
        case WorkTypeName.roadwayCreation:
          workTypeNamesStr.add('roadway creation');
        default:
          workTypeNamesStr.add('unknown');
      }
    }
    return workTypeNamesStr;
  }

  WorkTypeName _stringToWorkTypeName(String type) {
    switch (type) {
      case 'maintenance':
        return WorkTypeName.maintenance;
      case 'minor road defect repair':
        return WorkTypeName.minorRoadDefectRepair;
      case 'roadside work':
        return WorkTypeName.roadsideWork;
      case 'overhead work':
        return WorkTypeName.overheadWork;
      case 'below road work':
        return WorkTypeName.belowRoadWork;
      case 'barrier work':
        return WorkTypeName.barrierWork;
      case 'surface work':
        return WorkTypeName.surfaceWork;
      case 'painting':
        return WorkTypeName.painting;
      case 'roadway relocation':
        return WorkTypeName.roadwayRelocation;
      case 'roadway creation':
        return WorkTypeName.roadwayCreation;
      default:
        throw ArgumentError('Invalid WorkTypeName: $type'); //TODO change this
    }
  }

  List<String> _getGeometryTypes() {
    List<GeometryType> geometryTypes = GeometryType.values;
    List<String> geometryTypesStr = [];
    for (GeometryType type in geometryTypes) {
      switch (type) {
        case GeometryType.multipoint:
          geometryTypesStr.add('multipoint');
        case GeometryType.linestring:
          geometryTypesStr.add('linestring');
        case GeometryType.polygon:
          geometryTypesStr.add('polygon');
        default:
          geometryTypesStr.add('unknown');
      }
    }
    return geometryTypesStr;
  }

  GeometryType _stringToGeometryType(String type) {
    switch (type) {
      case 'multipoint':
        return GeometryType.multipoint;
      case 'linestring':
        return GeometryType.linestring;
      case 'polygon':
        return GeometryType.polygon;
      default:
        throw ArgumentError('Invalid GeometryType: $type');
    }
  }

  RoadSegmentSurfaceType _stringToSurfaceType(String type) {
    switch (type) {
      case 'paved':
        return RoadSegmentSurfaceType.paved;
      case 'gravel':
        return RoadSegmentSurfaceType.gravel;
      case 'dirt':
        return RoadSegmentSurfaceType.dirt;
      case 'grooved':
        return RoadSegmentSurfaceType.grooved;
      default:
        throw ArgumentError('Invalid SurfaceType: $type');
    }
  }

  int? _parseDate(String? date) {
    if (date == "" || date == null) {
      return null;
    }
    DateTime dateTime = DateTime.parse(date);
    return dateTime.millisecondsSinceEpoch;
  }

  List<TypeOfWork> _getTypesOfWork() {
    List<TypeOfWork> typesOfWork = [];
    for (List workType in workTypeNameList) {
      if (workType[0] == "") {
        continue;
      }
      typesOfWork.add(TypeOfWork(
        typeName: _stringToWorkTypeName(workType[0]),
        isArchitecturalChange: workType[1]
      ));
    }
    return typesOfWork;
  }

  Future<void> _saveReport() async{
    List<TypeOfWork> typesOfWork = _getTypesOfWork();

    Report report = Report(
      project_id: projectIdController.text != "" ? int.parse(projectIdController.text) : null, //optional field
      segment_id: segmentIdController.text != "" ? int.parse(segmentIdController.text) : null, //optional field
      area_id: areaIdController.text != "" ? int.parse(areaIdController.text) : null, //optional field
      report_name: reportNameController.text,
      types_of_work: typesOfWork,
      workers_present: areWorkersPresent.value,
      start_date: _parseDate(startDate.text), //optional field
      end_date: _parseDate(endDate.text), //optional field
      report_date: _parseDate(reportDate.text) ?? DateTime.now().millisecondsSinceEpoch, //TODO change to launch an error
      area_type: _stringToWorkZoneType(controller.areaType),
      mobility_speed_mph: mobilitySpeedController.text != "" ? double.parse(mobilitySpeedController.text) : null, //optional field
      geometry_type: controller.geometryType,
      geometry: controller.points,
      geometry_line_width: controller.geometryType == GeometryType.linestring ? controller.lineWidth : null,
      license_plate: license_plate.text != "" ? license_plate.text : null, //optional field
      surface_type: _stringToSurfaceType(controller.surfaceType),
    );
    controller.waitingOnReportPost.value = true;
    await postReport(report);
    controller.waitingOnReportPost.value = false;
    Get.back();
  }

  Future<void> postReport(Report report) async {
    final url = Uri.parse('https://wzamapi.azurewebsites.net/reports');
    final headers = {'Content-Type': 'application/json'};
    try {
      final response = await http.post(url, 
        headers: headers, 
        body: json.encode({
            "project_id": report.project_id,
            "segment_id": report.segment_id,
            "area_id": report.area_id,
            "report_name": report.report_name,
            "types_of_work": report.types_of_work.map((e) => e.toJson()).toList(),
            "workers_present": report.workers_present,
            "start_date": report.start_date,
            "end_date": report.end_date,
            "report_date": report.report_date,
            "area_type": report.area_type.toString().split('.').last,
            "mobility_speed_mph": report.mobility_speed_mph,
            "geometry_type": report.geometry_type.toString().split('.').last,
            "geometry": report.geometry,
            "geometry_line_width": report.geometry_line_width,
            "license_plate": report.license_plate,
            "surface_type": report.surface_type.toString().split('.').last,
          }
        ),
      );
      if (response.statusCode == 200) {
        print('Report posted successfully');
        int reportId = json.decode(response.body)['id'];
        ReportWithId reportWithId = ReportWithId(
          id: reportId,
          project_id: report.project_id,
          segment_id: report.segment_id,
          area_id: report.area_id,
          report_name: report.report_name,
          types_of_work: report.types_of_work,
          workers_present: report.workers_present,
          start_date: report.start_date,
          end_date: report.end_date,
          report_date: report.report_date,
          area_type: report.area_type,
          mobility_speed_mph: report.mobility_speed_mph,
          geometry_type: report.geometry_type,
          geometry: report.geometry,
          geometry_line_width: report.geometry_line_width,
          license_plate: report.license_plate,
          surface_type: report.surface_type,
        );
        fileStorageService.saveReport(reportWithId, true);
      } else {
        print('Failed to post report: ${response.statusCode}');
        fileStorageService.saveReport(report, false);
      }
    } catch (e) {
      print('Error posting report: $e');
      fileStorageService.saveReport(report, false);
    }
  }
}