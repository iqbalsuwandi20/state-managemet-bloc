import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'controllers/theme.dart';
import 'pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeBloc themeBloc = context.read<ThemeBloc>();

    return BlocBuilder<ThemeBloc, bool>(
      bloc: themeBloc,
      builder: (context, state) => MaterialApp(
        theme: state == true ? ThemeData.light() : ThemeData.dark(),
        home: const HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
