part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class PressCountEvent extends CounterEvent {}
