import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:simple_bloc_base/datas/datas.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(this._authRemote) : super(RegisterState()) {
    on<RegisterPressEvent>(_onRegister);
  }

  final AuthRemote _authRemote;

  Future _onRegister(
      RegisterPressEvent event, Emitter<RegisterState> emit) async {
    final _name = event.name ?? '';
    final _email = event.email ?? '';
    final _phone = event.phone ?? '';
    final _pass = event.password ?? '';

    // Validate data.
    // Not empty validation.
    // Todo: phone format, email format, password format.......
    if (_name.isEmpty || _email.isEmpty || _phone.isEmpty || _pass.isEmpty) {
      // bao loi.
      // emit 1 state loi.
      emit(state.copyWith(message: "Email, Name, Phone, Pass is empty!"));
      return;
    }
    emit(state.copyWith(isLoading: true));
    // Call api.
    final result = await _authRemote.register(
      name: _name,
      email: _email,
      phone: _phone,
      pass: _pass,
    );
    emit(state.copyWith(isLoading: false));

    final newState = result.fold(
      (l) => state.copyWith(message: "Goi api loi roi"),
      (r) => state.copyWith(isSuccess: true),
    );

    // Check failed or success.
    emit(newState);
  }
}
