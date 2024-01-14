import 'package:flutter/material.dart';

abstract class Logger {
  Logger._();

  static void debugData(String data) {
    debugPrint(data);
  }
}
