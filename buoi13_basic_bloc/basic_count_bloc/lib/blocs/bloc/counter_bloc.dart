import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<PressCountEvent>((event, emit) {
      final _oldCount = state.count;
      final _newCount = _oldCount + 1;
      emit(CounterState(count: _newCount));
    });
  }
}
