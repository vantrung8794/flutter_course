import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';

import 'app_config.dart';
import 'constants/constants.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await AppConfig.instance.configApp(env: Env.dev);
  await UserInfo.initUserInfo();

  final startLocale = await LocaleHelper.instance.getDefaultLocale();
  HttpOverrides.global = MyHttpOverrides();

  runApp(
    EasyLocalization(
        supportedLocales: LocaleHelper.instance.supportedLocales,
        path: 'assets/translations',
        fallbackLocale: LocaleHelper.instance.fallbackLocale,
        startLocale: startLocale,
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Demo App',
      theme: ThemeConst.get(context),
      onGenerateRoute: RouteConfig.instance.routes,
      onGenerateInitialRoutes: (_) => [
        RouteConfig.instance.routeWithName(
          routeName: RouteConst.employees,
        ),
      ],
      builder: EasyLoading.init(),
    );
  }
}
