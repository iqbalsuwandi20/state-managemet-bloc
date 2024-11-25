import 'package:flutter/material.dart';

import 'hijau.dart';

class Kuning extends StatelessWidget {
  const Kuning({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.yellow[600],
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Hijau(),
    );
  }
}
