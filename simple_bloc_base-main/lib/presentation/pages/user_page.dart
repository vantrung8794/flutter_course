import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:simple_bloc_base/constants/constants.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteConstants.editUser);
                },
                child: Text("Cập nhật thông tin")),
            UIConstants.verticalSpace24,
            ElevatedButton(
                onPressed: () async {
                  await UserInfo.logout();
                  Navigator.of(context)
                      .pushReplacementNamed(RouteConstants.login);
                },
                child: Text("Đăng xuất"))
          ],
        ),
      ),
    );
  }
}
