part of 'random_bloc.dart';

@immutable
sealed class RandomState {
  const RandomState(this.data);

  final DataHomeModel data;
}

final class RandomInitial extends RandomState {
  const RandomInitial(super.data);
}

final class RandomLoading extends RandomState {
  const RandomLoading(super.data);
}

final class RandomCompleted extends RandomState {
  const RandomCompleted(super.data);
}

final class RandomError extends RandomState {
  const RandomError(super.data);
}
