import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';
import '../bloc/counter_event.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final CounterBloc counterBloc = CounterBloc(20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Enum Class".toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<CounterBloc, int>(
              bloc: counterBloc,
              builder: (context, state) => Text(
                "$state",
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () => counterBloc.add(CounterEvent.decrement),
                  icon: const Icon(Icons.remove, size: 50),
                ),
                IconButton(
                  onPressed: () => counterBloc.add(CounterEvent.increment),
                  icon: const Icon(Icons.add, size: 50),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
