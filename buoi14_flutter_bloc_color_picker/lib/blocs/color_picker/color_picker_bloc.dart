import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'color_picker_event.dart';
part 'color_picker_state.dart';

class ColorPickerBloc extends Bloc<ColorPickerEvent, ColorPickerState> {
  ColorPickerBloc() : super(ColorPickerState()) {
    on<OnInit>((event, emit) {
      emit(ColorPickerState(selectedColor: state.listColors.first));
    });
    on<OnChooseColor>((event, emit) {
      emit(ColorPickerState(selectedColor: event.color));
    });
  }
}
