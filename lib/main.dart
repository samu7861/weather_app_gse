import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'module/app.dart';

FutureOr<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(
    const Root(),
  );
}
