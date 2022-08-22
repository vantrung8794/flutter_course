import 'dart:developer' as dev;
import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';

import '../constants/constants.dart';
import '../presentation/pages/pages.dart';

Future<void> config(GetIt injector) async {
  try {
    injector.registerFactory<Widget>(
      () => const EmployeePage(),
      instanceName: RouteConstants.employee,
    );
    injector.registerFactory<Widget>(
      () => const RegisterPage(),
      instanceName: RouteConstants.register,
    );
    injector.registerFactory<Widget>(
      () => const LoginPage(),
      instanceName: RouteConstants.login,
    );
    injector.registerFactory<Widget>(
      () => const HomePage(),
      instanceName: RouteConstants.home,
    );
  } catch (e) {
    dev.log('Config PageDependencies failed');
  }
}
