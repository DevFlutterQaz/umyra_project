import 'package:flutter/material.dart';

class AudioRegularButtons extends StatelessWidget {
  const AudioRegularButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.amber),
    );
  }
}
