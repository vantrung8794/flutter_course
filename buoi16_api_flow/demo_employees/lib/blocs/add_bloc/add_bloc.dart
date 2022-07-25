import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../list_bloc/list_bloc.dart';

part 'add_event.dart';
part 'add_state.dart';

class AddBloc extends Bloc<AddEvent, AddState> {
  AddBloc() : super(AddState()) {
    on<AddPressEvent>((event, emit) async {
      emit(AddState(isLoading: true));
      try {
        final response = await Dio().post(
          '$endpoint/employees',
          data: {
            'name': event.name,
            'age': event.age,
          },
        );
        emit(AddState(isSuccess: true));
      } catch (e) {
        print(e);
      }
    });
  }
}
