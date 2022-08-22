import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart' as core;
import 'package:simple_bloc_base/blocs/blocs.dart';

import '../../constants/constants.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const core.AppScaffold<RegisterBloc>(
      title: Text(''),
      body: RegisterListener(),
    );
  }
}

class RegisterListener extends StatelessWidget {
  const RegisterListener({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return core.BlocListener<RegisterBloc, RegisterState>(
      listener: (context, state) {
        if (state.message != null) {
          core.UIHelper.showSnackBar(context, msg: state.message);
        }
        if (state.isSuccess) {
          core.UIHelper.showSnackBar(context,
              msg: "Đăng ký thành công! Chúc mừng!");
          Navigator.of(context).pop();
        }
        if (state.isLoading) {
          core.UIHelper.showLoading();
        } else {
          core.UIHelper.hideLoading();
        }
      },
      child: const RegisterBody(),
    );
  }
}

class RegisterBody extends StatefulWidget {
  const RegisterBody({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Register',
            style: StyleConstants.overSizeText.copyWith(
              color: ColorConstants.greyText,
            ),
            textAlign: TextAlign.center,
          ),
          UIConstants.verticalSpace20,
          TextField(
            decoration: const InputDecoration(hintText: 'Nhập tên'),
            controller: nameController,
            keyboardType: TextInputType.name,
          ),
          UIConstants.verticalSpace12,
          TextField(
            decoration: InputDecoration(hintText: 'Nhập Email'),
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
          ),
          UIConstants.verticalSpace12,
          TextField(
            decoration: InputDecoration(hintText: 'Nhập Phone'),
            keyboardType: TextInputType.phone,
            controller: phoneController,
          ),
          UIConstants.verticalSpace12,
          TextField(
            decoration: InputDecoration(hintText: 'Nhập Password'),
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            controller: passController,
          ),
          UIConstants.verticalSpace12,
          ElevatedButton(
            onPressed: () {
              final name = nameController.text;
              final email = emailController.text;
              final phone = phoneController.text;
              final pass = passController.text;
              final bloc = context.read<RegisterBloc>();
              bloc.add(RegisterPressEvent(
                  name: name, email: email, phone: phone, password: pass));
            },
            child: Text('Đăng ký'),
          )
        ],
      ),
    );
  }
}
