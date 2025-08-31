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
    expect(calc.add("1,2,3"), equals(6));
  });
}
