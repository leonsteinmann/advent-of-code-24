import '../utils/index.dart';

class Day02 extends GenericDay {
  Day02() : super(2);

  @override
  List<String> parseInput() {
    final lines = input.getPerLine();

    return lines;
  }

  @override
  int solvePart1() {
    final lines = parseInput();

    var safeCounter = 0;

    for (final line in lines) {
      final report = ParseUtil.stringToIntList(line);

      final ascending = report.first < report.last;

      var index = 0;
      while (index < report.length - 1) {
        final current = report[index];
        final next = report[index + 1];
        if (ascending) {
          if (current >= next || (next - current) > 3) {
            break;
          }
        } else {
          if (current <= next || (current - next) > 3) {
            break;
          }
        }

        index++;
        if (index == report.length - 1) {
          safeCounter++;
        }
      }
    }

    return safeCounter;
  }

  @override
  int solvePart2() {
    return 0;
  }
}
