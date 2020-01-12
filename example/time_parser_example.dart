import 'package:time_parser/time_parser.dart';

void main() {
  var time = Time.parse('15:30');
  print('hours: ${time.hours}, minutes: ${time.minutes}');
}