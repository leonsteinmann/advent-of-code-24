class ParseUtil {
  /// Throws an exception if any given String is not parseable.
  static List<int> stringListToIntList(List<String> strings) {
    return strings.map(int.parse).toList();
  }

  /// Returns decimal number from binary string
  static int binaryToDecimal(String binary) {
    return int.parse(binary, radix: 2);
  }

  /// Parses a space-separated string of integers into a List<int>.
  ///
  /// Example inputs:
  /// - "8 11 13 14 15 18 17" -> [8, 11, 13, 14, 15, 18, 17]
  /// - "43 44 47 49 52 52" -> [43, 44, 47, 49, 52, 52]
  static List<int> stringToIntList(String input) {
    if (input.trim().isEmpty) return [];
    return input.split(' ').map(int.parse).toList();
  }
}
