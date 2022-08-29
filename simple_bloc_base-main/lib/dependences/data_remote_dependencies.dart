import 'dart:developer' as dev;
import 'package:flutter_core/flutter_core.dart';

import '../datas/datas.dart';

Future<void> config(GetIt injector) async {
  try {
    injector.registerLazySingleton<EmployeeRemote>(
      () => EmployeeRemote(injector()),
    );
    injector.registerLazySingleton<AuthRemote>(
      () => AuthRemote(injector()),
    );
    injector.registerLazySingleton<UserRemote>(
      () => UserRemote(injector()),
    );
  } catch (e) {
    dev.log('Config ServiceDependencies failed');
  }
}
