import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'general_observer.dart';
import 'pages/home_page.dart';

void main() {
  Bloc.observer = MyGeneralObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
