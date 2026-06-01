import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/on_boarding/ui/on_boarding_screen.dart';

void main() {
  runApp(const KayanApp());
}

class KayanApp extends StatelessWidget {
  const KayanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
              primary: Colors.deepPurple,
              secondary: Colors.deepPurpleAccent,
              surface: Colors.white,
            ),
            scaffoldBackgroundColor: Colors.white,
            useMaterial3: true,
          ),
          home: const OnBoardingScreen(),
        );
      },
    );
  }
}
