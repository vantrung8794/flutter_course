import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:simple_bloc_base/blocs/blocs.dart';
import 'package:simple_bloc_base/constants/route_constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold<HomeBloc>(
      title: const Text('Home page'),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              await UserInfo.logout();
              // navigate qua man login
              Navigator.of(context).pushReplacementNamed(RouteConstants.login);
            },
            child: Text("Logout")),
      ),
    );
  }
}
