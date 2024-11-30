import 'package:bloc/bloc.dart';

import 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  // ignore: use_super_parameters initial
  CounterBloc(int intial) : super(intial) {
    on<DecrementCounter>((event, emit) => emit((state - 1) * event.value));

    on<IncrementCounter>((event, emit) => emit((state + 1) * event.value));
  }

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    // ignore: avoid_print
    print(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    // ignore: avoid_print
    print(error);
    // ignore: avoid_print
    print(stackTrace);
  }

  @override
  void onTransition(Transition<CounterEvent, int> transition) {
    super.onTransition(transition);
    // ignore: avoid_print
    print(transition);
  }
}
