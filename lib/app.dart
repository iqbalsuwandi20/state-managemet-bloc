import 'package:flutter/material.dart';

import './logic/export.dart';
import 'data/repositories/home_repository.dart';
import 'pages/home/home_view.dart';

class App extends StatelessWidget {
  App({super.key});

  final HomeRepository homeRepository = HomeRepository();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => RandomBloc(homeRepository)),
      ],
      child: const Appview(),
    );
  }
}

class Appview extends StatelessWidget {
  const Appview({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
