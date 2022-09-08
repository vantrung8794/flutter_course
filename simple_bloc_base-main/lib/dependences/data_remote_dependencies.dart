import 'dart:developer' as dev;
import 'package:flutter_core/flutter_core.dart';

import '../datasources/datasources.dart';

Future<void> config(GetIt injector) async {
  try {
    injector.registerLazySingleton<EmployeeRemote>(
      () => EmployeeRemote(injector()),
    );
  } catch (e) {
    dev.log('Config ServiceDependencies failed');
  }
}
