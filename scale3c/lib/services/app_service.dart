import 'package:flutter/material.dart';
import '../di/app_modules.dart';

class AppService {
  void initialize() {
    WidgetsFlutterBinding.ensureInitialized();
    _initModules();
  }

  void _initModules() => loadAppModules();
}
