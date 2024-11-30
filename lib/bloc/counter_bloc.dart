import 'package:bloc/bloc.dart';

import 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  // ignore: use_super_parameters initial
  CounterBloc(int intial) : super(intial) {
    on<DecrementCounter>((event, emit) => emit((state - 1) * event.value));

    on<IncrementCounter>((event, emit) => emit((state + 1) * event.value));
  }
}
