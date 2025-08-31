import 'package:test/test.dart';

import '../bin/string_calculator.dart';

void main() {
  // Initial Testcase
  test('empty string returns 0', () {
    final calc = StringCalculator();
    expect(calc.add(''), equals(0));
  });

  test('Sum of comma-separated numbers', () {
    final calc = StringCalculator();
    expect(calc.add("1,2,3,4,5"), equals(15));
  });

  test('Handle newline(\n) between numbers', () {
    final calc = StringCalculator();
    expect(calc.add("1\n2,3"), equals(6));
  });

  test('Handle delimiters between numbers', () {
    final calc = StringCalculator();
    expect(calc.add("//;\n1;2"), equals(3));
  });

  test('Exception message lists all negative numbers', () {
    final calc = StringCalculator();
    expect(
      () => calc.add("-1,-2,3,-4"),
      throwsA(predicate((e) =>
          e is FormatException &&
          e.message == 'negative numbers not allowed -1,-2,-4')),
    );
  });
}
