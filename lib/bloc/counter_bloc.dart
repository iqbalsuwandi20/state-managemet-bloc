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
