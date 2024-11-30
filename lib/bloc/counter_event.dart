class CounterEvent {
  int value;
  CounterEvent(this.value);
}

class DecrementCounter extends CounterEvent {
  DecrementCounter(super.value);
}

class IncrementCounter extends CounterEvent {
  IncrementCounter(super.value);
}
