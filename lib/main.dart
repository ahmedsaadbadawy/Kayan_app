import 'package:flutter/material.dart';

import 'features/on_boarding/on_boarding_screen.dart';

void main() {
  runApp(const KayanApp());
}

class KayanApp extends StatelessWidget {
  const KayanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF100A55),
          primary: const Color(0xFF100A55),
          secondary: const Color(0xFF7065F0),
          surface: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: const OnBoardingScreen(),
    );
  }
}
