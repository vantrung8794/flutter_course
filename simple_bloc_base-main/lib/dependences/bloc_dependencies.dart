import 'dart:developer' as dev;
import 'package:flutter_core/flutter_core.dart';

import '../blocs/blocs.dart';

Future<void> config(GetIt injector) async {
  try {
    injector.registerFactory<EmployeeBloc>(() => EmployeeBloc(injector()));
    injector.registerFactory<RegisterBloc>(() => RegisterBloc(injector()));
    injector.registerFactory<LoginBloc>(() => LoginBloc(injector()));
    injector.registerFactory<HomeBloc>(() => HomeBloc());
    injector.registerFactory<EditUserBloc>(() => EditUserBloc(injector()));
  } catch (e) {
    dev.log('Config BlocDependencies failed');
  }
}
