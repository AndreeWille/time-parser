import 'package:time_parser/time_parser.dart';
import 'package:test/test.dart';

void main() {
  group('splits valid time input', () {
    test('into integers', () {
      var correctTime = Time.parse('15:30');
      expect(correctTime.hours, equals(15));
      expect(correctTime.minutes, equals(30));
    });
  });
}
