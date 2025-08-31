import 'package:test/test.dart';

import '../bin/string_calculator.dart';

void main() {

  test('empty string returns 0', () {
    final calc = StringCalculator();
    expect(calc.add(''), equals(0));
  });

}
