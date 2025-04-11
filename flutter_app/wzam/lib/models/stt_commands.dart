// Speech to text commands
enum SttCommand {
  speedLimit5,
  speedLimit10,
  speedLimit15,
  speedLimit20,
  speedLimit25,
  speedLimit30,
  speedLimit35,
  speedLimit40,
  speedLimit45,
  speedLimit50,
  speedLimit55,
  speedLimit60,
  speedLimit65,
  speedLimit70,
  speedLimit75,
  speedLimit80,
  speedLimit85,
  speedLimit90,
  speedLimit95,
  speedLimit100,
  laneClosed1,
  laneClosed2,
  laneClosed3,
  laneClosed4,
  laneClosed5,
  laneClosed6,
  laneOpened1,
  laneOpened2,
  laneOpened3,
  laneOpened4,
  laneOpened5,
  laneOpened6,
  workersPresent,
  workersNotPresent,
  startWorkZone,
  endWorkZone,
  stop,
}

List<String> generateSpeedLimitComparisonStrings(int speedLimit) => [
      'speed limit to $speedLimit',
      'speed limit to $speedLimit mph',
      'speed limit to $speedLimit miles per hour',
      'speed limit $speedLimit',
      'speed limit $speedLimit mph',
      'speed limit $speedLimit miles per hour',
      'speed limit to $speedLimit',
      'speed limit to $speedLimit mph',
      'speed limit to $speedLimit miles per hour',
      'speed limit is $speedLimit',
      'speed limit is $speedLimit mph',
      'speed limit is $speedLimit miles per hour',
    ];
List<String> generateLaneClosureComparisonStrings(int laneNumber) => [
      'lane $laneNumber closed',
      'lane number $laneNumber closed',
      'close lane $laneNumber',
      'close lane number $laneNumber',
    ];
List<String> generateLaneOpenedComparisonStrings(int laneNumber) => [
      'lane $laneNumber open',
      'lane number $laneNumber open',
      'lane $laneNumber opened',
      'lane number $laneNumber opened',
      'open lane $laneNumber',
      'open lane number $laneNumber',
    ];

/// Extension to add a method that returns the associated text for each enum value.
extension SttCommandExtension on SttCommand {
  String get confirmationString {
    switch (this) {
      case SttCommand.speedLimit5:
        return 'Speed limit set to 5 mph';
      case SttCommand.speedLimit10:
        return 'Speed limit set to 10 mph';
      case SttCommand.speedLimit15:
        return 'Speed limit set to 15 mph';
      case SttCommand.speedLimit20:
        return 'Speed limit set to 20 mph';
      case SttCommand.speedLimit25:
        return 'Speed limit set to 25 mph';
      case SttCommand.speedLimit30:
        return 'Speed limit set to 30 mph';
      case SttCommand.speedLimit35:
        return 'Speed limit set to 35 mph';
      case SttCommand.speedLimit40:
        return 'Speed limit set to 40 mph';
      case SttCommand.speedLimit45:
        return 'Speed limit set to 45 mph';
      case SttCommand.speedLimit50:
        return 'Speed limit set to 50 mph';
      case SttCommand.speedLimit55:
        return 'Speed limit set to 55 mph';
      case SttCommand.speedLimit60:
        return 'Speed limit set to 60 mph';
      case SttCommand.speedLimit65:
        return 'Speed limit set to 65 mph';
      case SttCommand.speedLimit70:
        return 'Speed limit set to 70 mph';
      case SttCommand.speedLimit75:
        return 'Speed limit set to 75 mph';
      case SttCommand.speedLimit80:
        return 'Speed limit set to 80 mph';
      case SttCommand.speedLimit85:
        return 'Speed limit set to 85 mph';
      case SttCommand.speedLimit90:
        return 'Speed limit set to 90 mph';
      case SttCommand.speedLimit95:
        return 'Speed limit set to 95 mph';
      case SttCommand.speedLimit100:
        return 'Speed limit set to 100 mph';

      case SttCommand.laneClosed1:
        return 'Lane 1 closed';
      case SttCommand.laneClosed2:
        return 'Lane 2 closed';
      case SttCommand.laneClosed3:
        return 'Lane 3 closed';
      case SttCommand.laneClosed4:
        return 'Lane 4 closed';
      case SttCommand.laneClosed5:
        return 'Lane 5 closed';
      case SttCommand.laneClosed6:
        return 'Lane 6 closed';

      case SttCommand.laneOpened1:
        return 'Lane 1 opened';
      case SttCommand.laneOpened2:
        return 'Lane 2 opened';
      case SttCommand.laneOpened3:
        return 'Lane 3 opened';
      case SttCommand.laneOpened4:
        return 'Lane 4 opened';
      case SttCommand.laneOpened5:
        return 'Lane 5 opened';
      case SttCommand.laneOpened6:
        return 'Lane 6 opened';

      case SttCommand.workersPresent:
        return 'Workers are present';
      case SttCommand.workersNotPresent:
        return 'No workers are present';

      case SttCommand.startWorkZone:
        return 'Work zone starting point marked';
      case SttCommand.endWorkZone:
        return 'Work zone ending point marked';

      case SttCommand.stop:
        return 'Stopped Listening';
    }
  }

  List<String> get comparisonStrings {
    switch (this) {
      case SttCommand.speedLimit5:
        return generateSpeedLimitComparisonStrings(5);
      case SttCommand.speedLimit10:
        return generateSpeedLimitComparisonStrings(10);
      case SttCommand.speedLimit15:
        return generateSpeedLimitComparisonStrings(15);
      case SttCommand.speedLimit20:
        return generateSpeedLimitComparisonStrings(20);
      case SttCommand.speedLimit25:
        return generateSpeedLimitComparisonStrings(25);
      case SttCommand.speedLimit30:
        return generateSpeedLimitComparisonStrings(30);
      case SttCommand.speedLimit35:
        return generateSpeedLimitComparisonStrings(35);
      case SttCommand.speedLimit40:
        return generateSpeedLimitComparisonStrings(40);
      case SttCommand.speedLimit45:
        return generateSpeedLimitComparisonStrings(45);
      case SttCommand.speedLimit50:
        return generateSpeedLimitComparisonStrings(50);
      case SttCommand.speedLimit55:
        return generateSpeedLimitComparisonStrings(55);
      case SttCommand.speedLimit60:
        return generateSpeedLimitComparisonStrings(60);
      case SttCommand.speedLimit65:
        return generateSpeedLimitComparisonStrings(65);
      case SttCommand.speedLimit70:
        return generateSpeedLimitComparisonStrings(70);
      case SttCommand.speedLimit75:
        return generateSpeedLimitComparisonStrings(75);
      case SttCommand.speedLimit80:
        return generateSpeedLimitComparisonStrings(80);
      case SttCommand.speedLimit85:
        return generateSpeedLimitComparisonStrings(85);
      case SttCommand.speedLimit90:
        return generateSpeedLimitComparisonStrings(90);
      case SttCommand.speedLimit95:
        return generateSpeedLimitComparisonStrings(95);
      case SttCommand.speedLimit100:
        return generateSpeedLimitComparisonStrings(100);

      case SttCommand.laneClosed1:
        return generateLaneClosureComparisonStrings(1);
      case SttCommand.laneClosed2:
        return generateLaneClosureComparisonStrings(2);
      case SttCommand.laneClosed3:
        return generateLaneClosureComparisonStrings(3);
      case SttCommand.laneClosed4:
        return generateLaneClosureComparisonStrings(4);
      case SttCommand.laneClosed5:
        return generateLaneClosureComparisonStrings(5);
      case SttCommand.laneClosed6:
        return generateLaneClosureComparisonStrings(6);

      case SttCommand.laneOpened1:
        return generateLaneOpenedComparisonStrings(1);
      case SttCommand.laneOpened2:
        return generateLaneOpenedComparisonStrings(2);
      case SttCommand.laneOpened3:
        return generateLaneOpenedComparisonStrings(3);
      case SttCommand.laneOpened4:
        return generateLaneOpenedComparisonStrings(4);
      case SttCommand.laneOpened5:
        return generateLaneOpenedComparisonStrings(5);
      case SttCommand.laneOpened6:
        return generateLaneOpenedComparisonStrings(6);

      case SttCommand.workersPresent:
        return [
          'workers present',
          'workers are present',
          'there are workers present'
        ];
      case SttCommand.workersNotPresent:
        return [
          'workers not present',
          'no workers present',
          'there are no workers present'
        ];

      case SttCommand.startWorkZone:
        return ['start work zone', 'begin work zone', 'work zone starts here'];
      case SttCommand.endWorkZone:
        return ['end work zone', 'finish work zone', 'work zone ends here'];

      case SttCommand.stop:
        return ['stop', 'stop listening', 'cancel'];
    }
  }
}
