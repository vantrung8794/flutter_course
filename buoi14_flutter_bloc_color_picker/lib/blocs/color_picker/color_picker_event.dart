part of 'color_picker_bloc.dart';

@immutable
abstract class ColorPickerEvent {}

class OnChooseColor extends ColorPickerEvent {
  final String? color;

  OnChooseColor({this.color});
}

class OnInit extends ColorPickerEvent {}
