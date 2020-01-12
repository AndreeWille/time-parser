class Time {
  String time;
  int hours;
  int minutes;

  Time.parse(String time) {
    this.time = time;
    var hoursAndMinutesAsString = time.split(':');
    
    hours = int.parse(hoursAndMinutesAsString[0]);
    minutes = int.parse(hoursAndMinutesAsString[1]);
  }
}
