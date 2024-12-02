part of 'user_bloc.dart';

@immutable
sealed class UserEvent {}

class AddUserEvent extends UserEvent {
  AddUserEvent(this.user);

  final User user;
}

class DeleteUserEvent extends UserEvent {
  DeleteUserEvent(this.user);

  final User user;
}

class EditUserEvent extends UserEvent {
  EditUserEvent(this.user);

  final User user;
}
