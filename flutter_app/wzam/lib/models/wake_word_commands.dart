// Speech to text commands
enum WakeWordCommand {
  heyWorkZone,
  createMarking,
  needHelpNow,
}

/// Extension to add a method that returns the associated text for each enum value.
extension WakeWordCommandExtension on WakeWordCommand {
  String get text {
    switch (this) {
      case WakeWordCommand.heyWorkZone:
        return 'Hey Work Zone';
      case WakeWordCommand.createMarking:
        return 'Create Marking';
      case WakeWordCommand.needHelpNow:
        return 'Need Help Now';
    }
  }

  String get id {
    switch (this) {
      case WakeWordCommand.heyWorkZone:
        return 'hey_work_zone';
      case WakeWordCommand.createMarking:
        return 'create_marking';
      case WakeWordCommand.needHelpNow:
        return 'need_help_now';
    }
  }

  String get modelName {
    switch (this) {
      case WakeWordCommand.heyWorkZone:
        return 'hey_work_zone.onnx';
      case WakeWordCommand.createMarking:
        return 'create_marking.onnx';
      case WakeWordCommand.needHelpNow:
        return 'need_help_now.onnx';
    }
  }
}
