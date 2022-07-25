part of 'list_bloc.dart';

class ListState {
  final List<Employee>? employees;
  final bool isLoading;

  ListState({
    this.employees,
    this.isLoading = false,
  });
}
