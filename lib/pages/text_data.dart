import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controllers/counter.dart';

class TextData extends StatelessWidget {
  const TextData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Counter counter = BlocProvider.of<Counter>(context);
    return BlocBuilder(
      bloc: counter,
      builder: (context, state) => Text(
        "$state",
        style: const TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
