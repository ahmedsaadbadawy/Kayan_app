import 'package:go_router/go_router.dart';
import 'package:kayan_app/features/blogs/data/blog_model.dart';
import 'package:kayan_app/features/blogs/ui/blog_details_screen.dart';
import 'package:kayan_app/features/blogs/ui/blogs_screen.dart';
import 'package:kayan_app/features/finishes/ui/finishes_details_screen.dart';
import 'package:kayan_app/features/finishes/ui/finishes_screen.dart';
import 'package:kayan_app/features/home/ui/home_screen.dart';
import 'package:kayan_app/features/on_boarding/ui/on_boarding_screen.dart';
import 'package:kayan_app/features/properties/ui/properties_screen.dart';
import 'package:kayan_app/features/properties/ui/property_details_screen.dart';

abstract class AppRouter {
  static const kHomeScreen = '/HomeScreen';
  static const kOnBoardingScreen = '/OnBoardingScreen';
  static const kPropertiesScreen = '/PropertiesScreen';
  static const kFinishesScreen = '/FinishesScreen';
  static const kBlogsScreen = '/BlogScreen';
  static const kPropertyDetailsScreen = '/PropertyDetailsScreen';
  static const kFinishesDetailsScreen = '/FinishesDetailsScreen';
  static const kBlogDetailsScreen = '/BlogDetailsScreen';
  static final router = GoRouter(
    initialLocation: '/',
    routes: <GoRoute>[
      GoRoute(path: '/', builder: (context, state) => const OnBoardingScreen()),
      GoRoute(
        path: kHomeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: kPropertiesScreen,
        builder: (context, state) => const PropertiesScreen(),
      ),
      GoRoute(
        path: kFinishesScreen,
        builder: (context, state) => const FinishesScreen(),
      ),
      GoRoute(
        path: kBlogsScreen,
        builder: (context, state) => const BlogsScreen(),
      ),
      GoRoute(
        path: kPropertyDetailsScreen,
        builder: (context, state) => const PropertyDetailsScreen(),
      ),
      GoRoute(
        path: kFinishesDetailsScreen,
        builder: (context, state) => const FinishesDetailsScreen(),
      ),
      GoRoute(
        path: kBlogDetailsScreen,
        builder: (context, state) =>
             BlogDetailsScreen(blogModel: state.extra as BlogModel),
      ),
    ],
  );
}
