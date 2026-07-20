enum Shift {
  morning,
  middle,
  afternoon,
  off,
}

extension ShiftLabel on Shift {
  String get code {
    switch (this) {
      case Shift.morning:
        return 'M';
      case Shift.middle:
        return 'Md';
      case Shift.afternoon:
        return 'A';
      case Shift.off:
        return 'Off';
    }
  }
}
