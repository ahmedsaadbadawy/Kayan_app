import 'package:go_router/go_router.dart';
import 'package:kayan_app/features/home/ui/home_screen.dart';
import 'package:kayan_app/features/on_boarding/ui/on_boarding_screen.dart';

abstract class AppRouter {
  static const kHomeScreen = '/HomeScreen';
  static final router = GoRouter(
    routes: <GoRoute>[
      GoRoute(path: '/', builder: (context, state) => const OnBoardingScreen()),
      GoRoute(
        path: kHomeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
