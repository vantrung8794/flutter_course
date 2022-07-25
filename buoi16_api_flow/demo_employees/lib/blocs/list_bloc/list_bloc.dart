import 'package:bloc/bloc.dart';
import 'package:demo_employees/models/employee.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'list_event.dart';
part 'list_state.dart';

const endpoint = "https://62d550e215ad24cbf2c442de.mockapi.io/demo/v1";

class ListBloc extends Bloc<ListEvent, ListState> {
  ListBloc() : super(ListState()) {
    on<LoadEmployeesEvent>((event, emit) async {
      emit(ListState(isLoading: true));
      try {
        var response = await Dio().get('$endpoint/employees');
        if (response.data is List) {
          final listData = response.data as List;
          final employees = listData
              .map(
                (e) => Employee.fromJson(e),
              )
              .toList();
          emit(ListState(employees: employees));
        }
      } catch (e) {
        print(e);
      }
    });
  }
}

// async await.
