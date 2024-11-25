import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'controllers/counter.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => Counter(),
        child: const HomePage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
