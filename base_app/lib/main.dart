import 'package:base_app/app/app_module.dart';
import 'package:base_app/app/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:module_external_dependencies/flutter_modular.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
