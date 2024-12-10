import '../utils/index.dart';

class Day03 extends GenericDay {
  Day03() : super(3);

  @override
  String parseInput() {
    return input.asString;
  }

  @override
  int solvePart1() {
    final string = parseInput();

    // Regular expression to match valid `mul(X,Y)` instructions.
    final regex = RegExp(r'mul\((\d{1,3}),\s*(\d{1,3})\)');
    int totalSum = 0;

    // Iterate over all matches in the input string.
    for (final match in regex.allMatches(string)) {
      // Extract and parse the numbers.
      final x = int.parse(match.group(1)!);
      final y = int.parse(match.group(2)!);
      // Add their product to the total sum.
      totalSum += x * y;
    }

    return totalSum;
  }

  @override
  int solvePart2() {
    return 0;
  }
}
