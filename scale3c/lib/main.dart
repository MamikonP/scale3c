import 'package:flutter/material.dart';
import 'app.dart';
import 'services/app_service.dart';
import 'services/fireabse_service.dart';

void main() async {
  AppService().initialize();
  await FirebaseService().initialize();
  runApp(const App());
}
