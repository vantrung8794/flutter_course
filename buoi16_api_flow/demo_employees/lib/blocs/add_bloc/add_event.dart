part of 'add_bloc.dart';

@immutable
abstract class AddEvent {}

class AddPressEvent extends AddEvent {
  final String? name;
  final int? age;

  AddPressEvent({this.name, this.age});
}
