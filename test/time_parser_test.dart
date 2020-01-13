import 'package:time_parser/time_parser.dart';
import 'package:test/test.dart';

void main() {
  group('valid time strings', () {
    test('are parsed correctly', () {
      var validInput = {'15:30': [15, 30], '00:00': [0, 0], '23:59': [23, 59], '0:59': [0, 59]};

      validInput.forEach((timeString, expectedResult) {
        var time = TimeParser.parse(timeString);
        var expectedHours = expectedResult[0];
        var expectedMinutes = expectedResult[1];

        expect(time.hours, equals(expectedHours));
        expect(time.minutes, equals(expectedMinutes));
      });
    });
  });
  group('invalid time stings', () {
    test('cause an TimeParseException', () {
      var invalidInput = ['xx:xx', '111:10', '111:111', '11:111', '1:00 am', '2:00 pm', 'x23:00'];
      invalidInput.forEach((timeString) {
        expect(() => TimeParser.parse(timeString), throwsA(isA<TimeParseException>()));
      });
    });
  });
}
