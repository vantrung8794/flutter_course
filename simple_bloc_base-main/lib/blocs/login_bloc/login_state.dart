part of 'login_bloc.dart';

class LoginState {
  final String? message;
  final bool isSuccess;
  final bool isLoading;

  LoginState({
    this.message,
    this.isSuccess = false,
    this.isLoading = false,
  });

  LoginState copyWith({
    String? message,
    bool isSuccess = false,
    bool isLoading = false,
  }) {
    return LoginState(
      message: message,
      isSuccess: isSuccess,
      isLoading: isLoading,
    );
  }
}
