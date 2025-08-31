class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    List<String> numbersList = [];
    if (numbers.startsWith('//')) {
      int newlineIndex = numbers.indexOf('\n');
      if (newlineIndex != -1) {
        String delimiter = numbers.substring(2, newlineIndex);
        String nums = numbers.substring(newlineIndex + 1);
        // Split by delimiter, then by \n
        for (var part in nums.split(delimiter)) {
          numbersList.addAll(part.split('\n'));
        }
      }
    } else {
      // Split by comma, then by \n
      for (var part in numbers.split(',')) {
        numbersList.addAll(part.split('\n'));
      }
    }
    List<int> intList = numbersList.map(int.parse).toList();
    List<int> negatives = intList.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw FormatException('negative numbers not allowed ${negatives.join(',')}');
    }
    return intList.reduce((a, b) => a + b);
  }

}
