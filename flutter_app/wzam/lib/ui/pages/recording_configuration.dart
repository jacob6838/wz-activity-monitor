import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wzam/controllers/recording_controller.dart';
import 'package:wzam/models/wzdx_models.dart';
import 'package:wzam/services/file_storage.dart';
import 'package:wzam/ui/pages/work_zone_recording.dart';
import 'package:wzam/ui/styles/screen_size.dart';
import 'package:wzam/ui/styles/spacing.dart';
import 'package:wzam/ui/styles/widgets/wzam_app_bar.dart';

class RecordingConfiguration extends StatelessWidget {
  RecordingConfiguration({super.key});

  final FileStorageService fileStorageService = Get.find<FileStorageService>();
  final TextEditingController recordingIdController = TextEditingController();
  final TextEditingController projectIdController = TextEditingController();
  final TextEditingController segmentIdController = TextEditingController();
  final TextEditingController areaIdController = TextEditingController();
  final TextEditingController recordingNameController = TextEditingController();
  final List workTypeNameList = [
    ["", false]
  ];
  final TextEditingController startDateController = TextEditingController();
  final TextEditingController endDateController = TextEditingController();
  final TextEditingController recordingDateController = TextEditingController();
  String areaType = "";
  final TextEditingController mobilitySpeedController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<String> areaTypes = _getAreaTypes();
    List<String> workTypeNames = _getWorkTypeNames();
    RxList<Widget> workTypeSegments = <Widget>[
      ..._workTypeSegment(context, workTypeNames, 0),
    ].obs;

    return Scaffold(
        appBar: WZAMAppBar(
          title: "Recording Configuration",
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Obx(() => ListView(children: [
                verticalSpaceMedium,
                _inputField("Recording ID", recordingIdController,
                    isNumeric: true),
                verticalSpaceMedium,
                _inputField("Project ID", projectIdController, isNumeric: true),
                verticalSpaceMedium,
                _inputField("Segment ID", segmentIdController, isNumeric: true),
                verticalSpaceMedium,
                _inputField("Area ID", areaIdController, isNumeric: true),
                verticalSpaceMedium,
                _inputField("Recording Name", recordingNameController),
                verticalSpaceMedium,
                ...workTypeSegments,
                ElevatedButton(
                  onPressed: () {
                    workTypeNameList.add(["", false]);
                    workTypeSegments = workTypeSegments +
                        _workTypeSegment(context, workTypeNames,
                            workTypeNameList.length - 1);
                  },
                  child: const Text("Add Another Type of Work"),
                ),
                verticalSpaceMedium,
                _inputField("Start Date", startDateController,
                    isDate: true, context: context),
                verticalSpaceMedium,
                _inputField("End Date", endDateController,
                    isDate: true, context: context),
                verticalSpaceMedium,
                _inputField("Recording Date", recordingDateController,
                    isDate: true, context: context),
                verticalSpaceMedium,
                _dropdownField("Area Type", areaTypes, context,
                    isAreaWorkType: true),
                verticalSpaceMedium,
                _inputField("Mobility Speed (MPH)", mobilitySpeedController,
                    isDouble: true),
                verticalSpaceMedium,
                _startRecordingButton(),
              ])),
        ));
  }

  Widget _inputField(String labelText, TextEditingController controller,
      {bool isNumeric = false,
      bool isDate = false,
      bool isDouble = false,
      BuildContext? context}) {
    return TextField(
      decoration: InputDecoration(labelText: labelText),
      controller: controller,
      keyboardType: isNumeric || isDouble
          ? const TextInputType.numberWithOptions(decimal: true)
          : TextInputType.text,
      inputFormatters: isNumeric
          ? <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly]
          : isDouble
              ? <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*'))
                ]
              : null,
      readOnly: isDate,
      onTap: isDate
          ? () async {
              DateTime? pickedDate = await showDatePicker(
                context: context!,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101),
              );
              if (pickedDate != null) {
                controller.text = "${pickedDate.toLocal()}".split(' ')[0];
              }
            }
          : null,
      onChanged: (value) async {
        // Handle changes if needed
      },
    );
  }

  Widget _dropdownField(
      String labelText, List<String> optionsList, BuildContext context,
      {int? index, bool isAreaWorkType = false}) {
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
        items: optionsList
            .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(e),
                ))
            .toList(),
        onChanged: (value) async {
          if (isAreaWorkType) {
            areaType = value.toString();
          } else {
            workTypeNameList[index!][0] = value.toString();
          }
        });
  }

  List<Widget> _workTypeSegment(
      BuildContext context, List<String> workTypeNames, int index) {
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
        RecordingController recordingController =
            Get.put(RecordingController(), tag: 'thisone');
        recordingController.iD = int.parse(recordingIdController.text);
        recordingController.projectId = int.parse(projectIdController.text);
        recordingController.segmentId = int.parse(segmentIdController.text);
        recordingController.areaId = int.parse(areaIdController.text);
        recordingController.recordingName = recordingNameController.text;
        recordingController.typesOfWork = _getTypesOfWork();
        recordingController.startDate = _parseDate(startDateController.text);
        recordingController.endDate = _parseDate(endDateController.text);
        recordingController.recordingDate =
            _parseDate(recordingDateController.text);
        recordingController.areaType = _stringToWorkZoneType(areaType);
        recordingController.mobilitySpeedMPH =
            double.parse(mobilitySpeedController.text);
        Get.to(() => const WorkZoneRecording());
      },
      child: const Text("Start Recording"),
    );
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

  int _parseDate(String date) {
    DateTime dateTime = DateTime.parse(date);
    return dateTime.millisecondsSinceEpoch;
  }

  List<TypeOfWork> _getTypesOfWork() {
    List<TypeOfWork> typesOfWork = [];
    for (List workType in workTypeNameList) {
      typesOfWork.add(TypeOfWork(
          typeName: _stringToWorkTypeName(workType[0]),
          isArchitecturalChange: workType[1]));
    }
    return typesOfWork;
  }
}
