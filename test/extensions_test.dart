// ignore_for_file: avoid_print
import 'package:s_extensions/s_extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('DONE', () {
    final half = 3.half;
    print('3.half = $half');
    expect(half, 1.5);

    final capitalized = 'hello'.capitalize;
    print('hello.capitalize = $capitalized');
    expect(capitalized, 'Hello');

    final reversed = 'hello'.reverse;
    print('hello.reverse = $reversed');
    expect(reversed, 'olleh');

    final date = '2023-01-01'.toDate;
    print('2023-01-01.toDate = $date');
    expect(date, DateTime(2023, 1, 1));

    final doubleVal = '123.45'.toDouble;
    print('123.45.toDouble = $doubleVal');
    expect(doubleVal, 123.45);

    final intVal = '123'.toInt;
    print('123.toInt = $intVal');
    expect(intVal, 123);

    final isEmail = 'example@domain.com'.isEmail;
    print('example@domain.com.isEmail = $isEmail');
    expect(isEmail, true);

    final isPhone1 = '1234567890'.isPhoneNumber;
    print('1234567890.isPhoneNumber = $isPhone1');
    expect(isPhone1, true);

    final isUrl = 'https://www.example.com'.isUrl;
    print('https://www.example.com.isUrl = $isUrl');
    expect(isUrl, true);
  });
}
