import 'package:flutter/material.dart';
import 'package:umyra/src/features/screens/auth/pages/log_in.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return const LogInScreen();
  }
}
