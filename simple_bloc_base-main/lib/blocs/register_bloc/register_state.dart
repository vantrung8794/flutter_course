part of 'register_bloc.dart';

class RegisterState {
  final String? message;
  final bool isSuccess;
  final bool isLoading;

  RegisterState({
    this.message,
    this.isSuccess = false,
    this.isLoading = false,
  });

  RegisterState copyWith({
    String? message,
    bool isSuccess = false,
    bool isLoading = false,
  }) {
    return RegisterState(
      message: message,
      isSuccess: isSuccess,
      isLoading: isLoading,
    );
  }
}
