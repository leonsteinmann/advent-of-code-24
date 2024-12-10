import '../utils/index.dart';

class Day04 extends GenericDay {
  Day04() : super(4);

  @override
  Field<String> parseInput() {
    final rows = input.getPerLine();
    final lines = rows.map((line) => line.trim().split('').toList()).toList();

    return Field(lines);
  }

  @override
  int solvePart1() {
    const masList = ['M', 'A', 'S'];

    var result = 0;

    final field = parseInput();

    void performMASCheck(Position position, int directionX, int directionY) {
      var currentPosition =
          (position.$1 + directionX, position.$2 + directionY);

      for (final char in masList) {
        if (!field.isOnField(currentPosition)) {
          return;
        }
        if (char != field.getValueAtPosition(currentPosition)) {
          return;
        }
        // move to next position
        currentPosition =
            (currentPosition.$1 + directionX, currentPosition.$2 + directionY);
      }
      result++;
    }

    void checkTop(Position position) => performMASCheck(position, 0, -1);
    void checkLeft(Position position) => performMASCheck(position, -1, 0);
    void checkRight(Position position) => performMASCheck(position, 1, 0);
    void checkBottom(Position position) => performMASCheck(position, 0, 1);

    void checkTL(Position position) => performMASCheck(position, -1, -1);
    void checkTR(Position position) => performMASCheck(position, 1, -1);
    void checkBL(Position position) => performMASCheck(position, -1, 1);
    void checkBR(Position position) => performMASCheck(position, 1, 1);

    void performChecksForX(Position position) {
      checkTop(position);
      checkLeft(position);
      checkRight(position);
      checkBottom(position);
      checkTL(position);
      checkTR(position);
      checkBL(position);
      checkBR(position);
    }

    field.forEach((p0, p1) {
      if (field.getValueAtPosition((p0, p1)) == 'X') {
        performChecksForX((p0, p1));
      }
    });

    return result;
  }

  @override
  int solvePart2() {
    return 0;
  }
}
