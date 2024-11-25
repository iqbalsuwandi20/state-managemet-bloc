import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_bloc/pages/other_page.dart';

import '../controllers/counter.dart';
import 'merah.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Counter counter = context.read<Counter>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bloc Access".toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              color: Colors.purple[500],
              borderRadius: BorderRadius.circular(20),
              child: InkWell(
                onTap: () {
                  counter.decrement();
                },
                borderRadius: BorderRadius.circular(20),
                child: const SizedBox(
                  height: 75,
                  width: 75,
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Merah(),
            Material(
              color: Colors.purple[500],
              borderRadius: BorderRadius.circular(20),
              child: InkWell(
                onTap: () {
                  counter.increment();
                },
                borderRadius: BorderRadius.circular(20),
                child: const SizedBox(
                  height: 75,
                  width: 75,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Global Access
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const OtherPage(),
            ),
          );

          // Anonymous Route Access
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) => BlocProvider.value(
          //       value: counter,
          //       child: const OtherPage(),
          //     ),
          //   ),
          // );

          // Named and Generated Route Access
          // Navigator.of(context).pushNamed("/other");
        },
        backgroundColor: Colors.pink[500],
        child: const Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
