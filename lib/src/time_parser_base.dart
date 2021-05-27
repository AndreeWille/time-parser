class Time {
  int hours;
  int minutes;

  Time(this.hours, this.minutes);

  @override
  String toString() => '${_format(hours)}:${_format(minutes)}';

  String _format(int number) => '${number < 10 ? '0$number' : number}';
}

abstract class TimeParser {
  static Time parse(String timeString) {
    if (!isValid(timeString)) {
      throw TimeParseException('invalid timeString: $timeString');
    }

    var hoursAndMinutesAsString = timeString.split(':');
    var hours = int.parse(hoursAndMinutesAsString[0]);
    var minutes = int.parse(hoursAndMinutesAsString[1]);
    return Time(hours, minutes);
  }

  static bool isValid(String timeString) {
    var expr = RegExp(r'^([0-1]?[0-9]|2[0-3]):[0-5][0-9]$');
    return expr.hasMatch(timeString);
  }
}

class TimeParseException implements Exception {
  String _message = '';

  TimeParseException([String message = 'invalid time string']) {
    _message = message;
  }

  @override
  String toString() => '$runtimeType: $_message';
}
