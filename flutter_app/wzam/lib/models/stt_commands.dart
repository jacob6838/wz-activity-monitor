// Speech to text commands
enum SttCommand {
  createReport,
  mapWorkZone,
  viewReports,
  stopListening,
}

/// Extension to add a method that returns the associated text for each enum value.
extension SttCommandExtension on SttCommand {
  String get text {
    switch (this) {
      case SttCommand.createReport:
        return 'create report';
      case SttCommand.mapWorkZone:
        return 'map work zone';
      case SttCommand.viewReports:
        return 'view reports';
      case SttCommand.stopListening:
        return 'stop listening';
    }
  }
}
