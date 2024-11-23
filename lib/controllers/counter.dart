import 'package:bloc/bloc.dart';

class Counter extends Cubit<int> {
  Counter({this.initialData = 0}) : super(initialData);

  int initialData;

  void increment() => emit(state + 1);

  void decrement() => emit(state - 1);

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
  }
}
