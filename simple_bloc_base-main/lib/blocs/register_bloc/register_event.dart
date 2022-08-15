part of 'register_bloc.dart';

@immutable
abstract class RegisterEvent {}

class RegisterPressEvent extends RegisterEvent {
  final String? name;
  final String? email;
  final String? phone;
  final String? password;

  RegisterPressEvent({this.name, this.email, this.phone, this.password});
}
