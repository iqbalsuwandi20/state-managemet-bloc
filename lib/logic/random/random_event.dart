part of 'random_bloc.dart';

@immutable
sealed class RandomEvent {}

class GetRandomEvent extends RandomEvent {}
