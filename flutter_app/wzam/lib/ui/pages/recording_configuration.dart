import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wzam/controllers/notification_controller.dart';
import 'package:wzam/controllers/recording_controller.dart';
import 'package:wzam/models/wzdx_models.dart';
import 'package:wzam/services/file_storage.dart';
import 'package:wzam/ui/pages/work_zone_recording.dart';
import 'package:wzam/ui/styles/screen_size.dart';
import 'package:wzam/ui/styles/spacing.dart';
import 'package:wzam/ui/styles/widgets/wzam_app_bar.dart';

//This is the first page that the user is taken to when creating a recording. It allows the user to input the necessary information to start a recording.
class RecordingConfiguration extends StatelessWidget {
  
  RecordingConfiguration({super.key});

  final FileStorageService fileStorageService = Get.find<FileStorageService>();
  final TextEditingController recordingIdController = TextEditingController();
  final TextEditingController projectIdController = TextEditingController();
  final TextEditingController segmentIdController = TextEditingController();
  final TextEditingController areaIdController = TextEditingController();
  final TextEditingController recordingNameController = TextEditingController();
  final List workTypeNameList = [["",false]];
  final TextEditingController startDateController = TextEditingController();
  final TextEditingController endDateController = TextEditingController();
  final TextEditingController recordingDateController = TextEditingController();
  String areaType = "";
  final TextEditingController mobilitySpeedController = TextEditingController();
  final TextEditingController numberOfLanesController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    List<String> areaTypes = _getAreaTypes();
    List<String> workTypeNames = _getWorkTypeNames();
    RxList<Widget> workTypeSegments = <Widget>[
      ..._workTypeSegment(context, workTypeNames, 0),
    ].obs;
    recordingDateController.text = DateTime.now().toString();
    return Scaffold(
      appBar: WZAMAppBar(
        title: "Recording Configuration",
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Obx(() => ListView(children: [
          verticalSpaceMedium,
          _inputField("Project ID", projectIdController, isNumeric: true),
          verticalSpaceMedium,
          _inputField("Segment ID", segmentIdController, isNumeric: true),
          verticalSpaceMedium,
          _inputField("Area ID", areaIdController, isNumeric: true),
          verticalSpaceMedium,
          _inputField("Recording Name", recordingNameController, isRequired: true),
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
          _inputField("Start Date", startDateController, isDate: true, context: context),
          verticalSpaceMedium,
          _inputField("End Date", endDateController, isDate: true, context: context),
          verticalSpaceMedium,
          _inputField("Recording Date", recordingDateController, isDate: true, isRequired: true, context: context),
          verticalSpaceMedium,
          _dropdownField("Area Type", areaTypes, context, isAreaWorkType: true),
          verticalSpaceMedium,
          _inputField("Mobility Speed (MPH)", mobilitySpeedController, isDouble: true),
          verticalSpaceMedium,
          _inputField("Number of Lanes", numberOfLanesController, isDouble: true, isRequired: true),
          verticalSpaceMedium,
          Container(  
            height: 3,
            decoration: BoxDecoration(
              color: Colors.black,
          )),
          verticalSpaceMedium,
          _startRecordingButton(),
        ])),
      ));
  }

  
   Widget _inputField(String labelText, TextEditingController controller, {bool isNumeric = false, bool isDate = false, bool isDouble = false, bool isRequired = false, BuildContext? context}) {
    return TextField(
      decoration: InputDecoration(labelText: isRequired ? labelText : "$labelText (optional)"),
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
            initialTime: TimeOfDay.now(),
          );
          if (pickedTime != null) {
            DateTime finalDateTime = DateTime(pickedDate.year, pickedDate.month, pickedDate.day, pickedTime.hour, pickedTime.minute);
            controller.text = finalDateTime.toString();
          }
        }
      } : null,
      onChanged: (value) async {
        // Handle changes if needed
      },
    );
  }

  Widget _dropdownField(String labelText, List<String> optionsList, BuildContext context, {int? index, bool isAreaWorkType = false}) {
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
          areaType = value.toString();
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

  ElevatedButton _startRecordingButton() {
    return ElevatedButton(
      onPressed: () {
        if (!_fieldsValid()) {
          return;
        }
        RecordingController recordingController = Get.put(RecordingController(), tag: 'thisone'); //TODO: chang tag
        recordingController.projectId = projectIdController.text != "" ? int.parse(projectIdController.text) : null; //optional
        recordingController.segmentId = segmentIdController.text != "" ? int.parse(segmentIdController.text) : null; //optional
        recordingController.areaId = areaIdController.text != "" ? int.parse(areaIdController.text) : null; //optional
        recordingController.recordingName = recordingNameController.text;
        recordingController.typesOfWork = _getTypesOfWork();
        recordingController.startDate = _parseDate(startDateController.text); //optional
        recordingController.endDate = _parseDate(endDateController.text); //optional
        recordingController.recordingDate = _parseDate(recordingDateController.text) ?? DateTime.now().millisecondsSinceEpoch; //TODO change to launch an error
        recordingController.areaType = _stringToWorkZoneType(areaType);
        recordingController.mobilitySpeedMPH =  mobilitySpeedController.text != "" ? double.parse(mobilitySpeedController.text) : null; //optional
        int maxLanes = int.parse(numberOfLanesController.text);
        recordingController.setLanesOpened(maxLanes);
        Get.to(() => const WorkZoneRecording());
      },
      child: const Text("Start Recording"),
    );
  }

  bool _fieldsValid() {
    if (recordingNameController.text == "") {
      NotificationController().queueNotification('Invalid Report', 'One or more required fields are missing');
      return false;
    }
    if (workTypeNameList[0][0] == "") {
      NotificationController().queueNotification('Invalid Report', 'One or more required fields are missing');
      return false;
    }
    if (recordingDateController.text != "" && _parseDate(recordingDateController.text) == null) {
      NotificationController().queueNotification('Invalid Report', 'Invalid date format');
      return false;
    }
    if (areaType == "") {
      NotificationController().queueNotification('Invalid Report', 'One or more required fields are missing');
      return false;
    }
    if (numberOfLanesController.text == "") {
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
    List<WorkTypeName> workTypeNameOptions = WorkTypeName.values;
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
        throw ArgumentError('Invalid WorkTypeName: $type');
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
      typesOfWork.add(TypeOfWork(
        typeName: _stringToWorkTypeName(workType[0]),
        isArchitecturalChange: workType[1]
      ));
    }
    return typesOfWork;
  }

}