import 'dart:io';
import 'package:flutter/material.dart';

class Environment {
  static String apiUrl =
      Platform.isAndroid ? 'http//10.0.2.2:3000/api/' : 'localhost:3000/api/';
}
