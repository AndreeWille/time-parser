import 'package:time_parser/time_parser.dart';

void main() {
  var time = TimeParser.parse('15:30');
  print('hours: ${time.hours}, minutes: ${time.minutes}');

  // invalid time strings cause an TimeParseException
  try {
    TimeParser.parse('xx:xx');
  } catch(e) {
    print(e); // TimeParseException: invalid timeString: xx:xx
  }
}