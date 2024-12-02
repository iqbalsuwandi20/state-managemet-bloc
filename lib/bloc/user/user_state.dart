part of 'user_bloc.dart';

@immutable
sealed class UserState {
  const UserState(this.allUsers);

  final List<User> allUsers;
}

final class UserInitial extends UserState {
  const UserInitial(super.allUsers);
}

final class UserLoading extends UserState {
  const UserLoading(super.allUsers);
}

final class UserFinish extends UserState {
  const UserFinish(super.allUsers);
}

final class UserError extends UserState {
  const UserError(super.allUsers);
}
