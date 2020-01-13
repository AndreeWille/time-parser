A library for Dart developers.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Format
A valid time string has the format: 
```regex
^([0-1]?[0-9]|2[0-3]):[0-5][0-9]$
```

## Usage

A simple usage example:

Parsing a valid time string
```dart
import 'package:time_parser/time_parser.dart';

void main() {
  var time = Time.parse('15:30');
  print('hours: ${time.hours}, minutes: ${time.minutes}');
}
```

An Exception is thrown when time string is not valid
```dart
import 'package:time_parser/time_parser.dart';

void main() {
   try {
    TimeParser.parse('xx:xx');
  } catch(TimeParseException) {
    print(e); // TimeParseException: invalid timeString: xx:xx
  }
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/AndreeWille/time_parser/issues
