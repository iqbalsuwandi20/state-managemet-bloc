import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/user/user_bloc.dart';
import '../../models/user.dart';
import '../add/add_page.dart';
import '../edit/edit_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    UserBloc userBloc = context.read<UserBloc>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Delete User".toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<UserBloc, UserState>(
        bloc: userBloc,
        builder: (context, state) {
          if (state.allUsers.isEmpty) {
            return Center(
              child: Text("Tidak ada data!".toUpperCase()),
            );
          }
          return ListView.builder(
              itemCount: state.allUsers.length,
              itemBuilder: (context, index) {
                User user = state.allUsers[index];
                return ListTile(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditPage(),
                    ),
                  ),
                  leading: CircleAvatar(
                    child: Text("${index + 1}"),
                  ),
                  title: Text(user.name),
                  subtitle: Text("${user.age} Years"),
                  trailing: IconButton(
                    onPressed: () {
                      userBloc.add(DeleteUserEvent(user));
                    },
                    icon: const Icon(Icons.delete),
                  ),
                );
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AddPage(),
          ),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
