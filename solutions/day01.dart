import '../utils/index.dart';

class Day01 extends GenericDay {
  Day01() : super(1);

  @override
  List<List<int>> parseInput() {
    final lines = input.getPerLine();

    // Initialize two empty lists for the left and right columns
    final leftColumn = <int>[];
    final rightColumn = <int>[];

    // Process each line
    for (final line in lines) {
      // Split each line by whitespace to extract the two numbers
      final parts = line.trim().split(RegExp(r'\s+'));
      if (parts.length == 2) {
        leftColumn.add(int.parse(parts[0]));
        rightColumn.add(int.parse(parts[1]));
      }
    }

    leftColumn.sort();
    rightColumn.sort();
    return [leftColumn, rightColumn];
  }

  @override
  int solvePart1() {
    final input = parseInput();

    var result = 0;
    for (final index in range(input.first.length)) {
      result += (input[0][index.toInt()] - input[1][index.toInt()]).abs();
    }

    return result;
  }

  @override
  int solvePart2() {
    final input = parseInput();

    var result = 0;
    for (final index in range(input.first.length)) {
      final leftInt = input[0][index.toInt()];
      final occurances = input[1].where((element) => element == leftInt).length;
      result += leftInt * occurances;
    }

    return result;
  }
}
