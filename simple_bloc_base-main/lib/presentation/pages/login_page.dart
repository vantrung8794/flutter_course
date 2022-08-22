import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart' as core;
import 'package:simple_bloc_base/blocs/blocs.dart';
import 'package:simple_bloc_base/constants/color_constants.dart';
import 'package:simple_bloc_base/constants/route_constants.dart';
import 'package:simple_bloc_base/constants/style_constants.dart';
import 'package:simple_bloc_base/constants/ui_constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return core.AppScaffold<LoginBloc>(
      title: const Text(''),
      body: LoginListener(),
    );
  }
}

class LoginListener extends StatelessWidget {
  const LoginListener({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return core.BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.message != null) {
          core.UIHelper.showSnackBar(context, msg: state.message);
        }
        if (state.isSuccess) {
          core.UIHelper.showSnackBar(context,
              msg: "Đăng nhap thành công! Chúc mừng!");
          Navigator.of(context).pushReplacementNamed(RouteConstants.home);
        }
        if (state.isLoading) {
          core.UIHelper.showLoading();
        } else {
          core.UIHelper.hideLoading();
        }
      },
      child: const LoginBody(),
    );
  }
}

class LoginBody extends StatefulWidget {
  const LoginBody({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final passController = TextEditingController();
  final emailController = TextEditingController();

  @override
  void dispose() {
    passController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'iCake',
            style: StyleConstants.logoText.copyWith(
              color: ColorConstants.primary,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          UIConstants.verticalSpace20,
          Text(
            'Đăng nhập',
            style: StyleConstants.hugeText.copyWith(
              color: ColorConstants.greyText,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          UIConstants.verticalSpace20,
          TextField(
            decoration: InputDecoration(hintText: 'Nhập Email'),
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
          ),
          UIConstants.verticalSpace12,
          TextField(
            decoration: InputDecoration(hintText: 'Nhập mật khẩu'),
            obscureText: true,
            controller: passController,
          ),
          UIConstants.verticalSpace12,
          ElevatedButton(
              onPressed: () {
                final email = emailController.text;
                final pass = passController.text;
                final bloc = context.read<LoginBloc>();
                bloc.add(OnLoginPress(email: email, pass: pass));
              },
              child: Text("Đăng nhập")),
          UIConstants.verticalSpace20,
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteConstants.register);
              },
              child: Text("Đăng ký")),
        ],
      ),
    );
  }
}
