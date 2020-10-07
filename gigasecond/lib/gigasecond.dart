class Gigasecond {
  DateTime add(DateTime input) {
    Duration duration = Duration(seconds: 1000000000);
    input = input.add(duration);
    return input;
  }
}
