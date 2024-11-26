import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controllers/counter.dart';
import '../controllers/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterBloc counterBloc = context.read<CounterBloc>();
    ThemeBloc themeBloc = context.read<ThemeBloc>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Multi Bloc Provider".toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, int>(
            bloc: counterBloc,
            builder: (context, state) => Text(
              '$state',
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () => counterBloc.remove(),
                icon: const Icon(
                  Icons.remove,
                  size: 50,
                ),
              ),
              IconButton(
                onPressed: () => counterBloc.add(),
                icon: const Icon(
                  Icons.add,
                  size: 50,
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => themeBloc.changeTheme(),
        child: const Icon(
          Icons.theater_comedy_outlined,
        ),
      ),
    );
  }
}
