import 'dart:convert';
import 'dart:io';

class Console {
  static String lerString({String text = ''}) {
    print(text);  
    return stdin.readLineSync(encoding: utf8)!;
  }

  static double? lerDouble({String text = ''}) {
    print(text);
    String input = stdin.readLineSync(encoding: utf8)!;
    try {
      return double.parse(input);
    } catch (e) {
      return null;
    }
  }
}
