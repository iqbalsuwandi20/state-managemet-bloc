import 'package:bloc/bloc.dart';

import 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  // ignore: use_super_parameters initial
  CounterBloc(int intial) : super(intial) {
    on<CounterEvent>(
      (event, emit) {
        if (event == CounterEvent.decrement) {
          emit(state - 1);
        } else {
          emit(state + 1);
        }
      },
    );
  }
}
