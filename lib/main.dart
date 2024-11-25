import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'controllers/counter.dart';
import 'pages/home_page.dart';
import 'routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Counter counter = Counter();

  final MyRoutes myRoutes = MyRoutes();

  @override
  Widget build(BuildContext context) {
    // Global Access
    return BlocProvider(
      create: (context) => Counter(),
      child: const MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
        // Named Route Access
        // initialRoute: "/",
        // routes: {
        //   "/": (context) => BlocProvider.value(
        //         value: counter,
        //         child: const HomePage(),
        //       ),
        //   "/other": (context) => BlocProvider.value(
        //         value: counter,
        //         child: const OtherPage(),
        //       ),
        // },

        // Generated Route Access
        // onGenerateRoute: myRoutes.onRoute,
      ),
    );
  }
}
