part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class OnLoginPress extends LoginEvent {
  final String? email;
  final String? pass;

  OnLoginPress({this.email, this.pass});
}
