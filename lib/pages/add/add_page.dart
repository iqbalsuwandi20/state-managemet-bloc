import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/user/user_bloc.dart';
import '../../models/user.dart';

class AddPage extends StatelessWidget {
  AddPage({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    UserBloc userBloc = context.read<UserBloc>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add User".toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            controller: nameController,
            autocorrect: false,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              labelText: "Name",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: ageController,
            autocorrect: false,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            decoration: const InputDecoration(
              labelText: "Age",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              userBloc.add(
                AddUserEvent(
                  User(
                    id: Random().nextInt(9999999),
                    name: nameController.text,
                    age: int.parse(ageController.text),
                  ),
                ),
              );
              Navigator.pop(context);
            },
            child: Text("Add User".toUpperCase()),
          ),
        ],
      ),
    );
  }
}
