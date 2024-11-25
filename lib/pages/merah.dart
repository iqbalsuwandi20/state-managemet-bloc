import 'package:flutter/material.dart';

import 'kuning.dart';

class Merah extends StatelessWidget {
  const Merah({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.red[600],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Kuning(),
    );
  }
}
