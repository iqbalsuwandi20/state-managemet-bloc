part of 'user_bloc.dart';

@immutable
sealed class UserState {
  const UserState(this.allUsers);

  final List<User> allUsers;
}

final class UserInitial extends UserState {
  const UserInitial(super.allUsers);
}
