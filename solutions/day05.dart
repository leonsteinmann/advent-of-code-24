import '../utils/index.dart';

class Day05 extends GenericDay {
  Day05() : super(5);

  @override
  (List<String>, List<List<int>>) parseInput() {
    var rules = <String>[];
    final updates = <List<int>>[];

    final seperatedInput = input.getPerWhitespace();
    rules = seperatedInput.elementAt(0).split('\n');

    final test = seperatedInput.elementAt(1).split(' ');
    final test2 = test.first.split('\n');

    for (final line in test2) {
      final temp = line.split(',').map(int.parse).toList();
      updates.add(temp);
    }

    return (rules, updates);
  }

  @override
  int solvePart1() {
    final parsedInput = parseInput();
    final rules = parsedInput.$1;
    final updates = parsedInput.$2;

    var result = 0;

    // for update in update:
    // for i in update (index)
    // check all numbers after for both cases x|y and y|x
    // if failes break
    // else count result =+ middle

    for (final update in updates) {
      final updateLength = update.length;
      for (final (index, item) in update.indexed) {}
    }

    return 0;
  }

  @override
  int solvePart2() {
    return 0;
  }
}
