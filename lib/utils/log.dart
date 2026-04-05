import 'package:flutter/material.dart';

class Log {
  static String _history = "";
  static void write(String content) {
    var entry = content.toString();
    _history += entry;
    debugPrint(entry);
  }
  static void writeLine(String content) {
    var entry = "${content.toString()}\n";
    _history += entry;
    debugPrint(entry);
  }
  static void getLogs() => _history;
}