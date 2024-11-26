import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_bloc/controllers/user_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    UserBloc userBloc = context.read<UserBloc>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bloc selector".toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          BlocSelector<UserBloc, Map<String, dynamic>, String>(
            selector: (state) => state['name'],
            builder: (context, state) => Text(
              "Nama: $state".toUpperCase(),
            ),
          ),
          BlocSelector<UserBloc, Map<String, dynamic>, int>(
            selector: (state) => state['age'],
            builder: (context, state) => Text(
              "Umur: $state Tahun".toUpperCase(),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            onChanged: (value) => userBloc.changeName(value),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Berapa umur anda:".toUpperCase(),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () =>
                      userBloc.changeAge(userBloc.state['age'] - 1),
                  icon: const Icon(
                    Icons.remove,
                    size: 50,
                  )),
              IconButton(
                  onPressed: () =>
                      userBloc.changeAge(userBloc.state['age'] + 1),
                  icon: const Icon(
                    Icons.add,
                    size: 50,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
