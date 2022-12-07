import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/app/app_module.dart';
import 'modules/app/init_app.dart';

void main() {
  return runApp(ModularApp(module: AppModule(), child: const InitApp()));
}
