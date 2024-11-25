import 'package:flutter/material.dart';

import 'center_data.dart';

class Hijau extends StatelessWidget {
  const Hijau({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.green[600],
        borderRadius: BorderRadius.circular(20),
      ),
      child: const CenterData(),
    );
  }
}
