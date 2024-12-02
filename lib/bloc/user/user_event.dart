part of 'user_bloc.dart';

@immutable
sealed class UserEvent {}

class AddUserEvent extends UserEvent {
  AddUserEvent(this.user);

  final User user;
}
