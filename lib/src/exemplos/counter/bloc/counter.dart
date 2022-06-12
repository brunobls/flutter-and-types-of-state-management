import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent {}

class IncremetCounterEvent extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<IncremetCounterEvent>((event, emit) => emit(state + 1));
  }
}
