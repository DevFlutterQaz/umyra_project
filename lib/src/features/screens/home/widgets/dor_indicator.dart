import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final bool isActive;
  const DotIndicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      width: isActive ? 10.0 : 8.0,
      height: 8,
      decoration: BoxDecoration(
          color: isActive ? Colors.amber : Colors.grey,
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
