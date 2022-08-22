import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:meta/meta.dart';

import '../../datas/datas.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._authRemote) : super(LoginState()) {
    on<OnLoginPress>(_onLoginPress);
  }

  final AuthRemote _authRemote;

  Future<void> _onLoginPress(
      OnLoginPress event, Emitter<LoginState> emit) async {
    // validate
    final _email = event.email ?? '';
    final _pass = event.pass ?? '';

    if (_email.isEmpty || _pass.isEmpty) {
      // show loi
      emit(state.copyWith(message: "Email hoac password khong the rong"));
      return;
    }

    emit(state.copyWith(isLoading: true));
    // call api.
    final result = await _authRemote.login(email: _email, pass: _pass);
    emit(state.copyWith(isLoading: false));

    final newState = result.fold(
      (l) => state.copyWith(message: "Goi api loi roi"),
      (right) {
        if (right is Map<String, dynamic>) {
          final data = right['data'];
          final token = data['token'] as String?;
          UserInfo.saveTokenInfo(token);
        }
        return state.copyWith(isSuccess: true);
      },
    );

    emit(newState);
  }
}
