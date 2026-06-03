import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kayan_app/features/blogs/data/blog_model.dart';
import 'package:kayan_app/features/blogs/ui/blog_details_screen.dart';
import 'package:kayan_app/features/blogs/ui/blogs_screen.dart';
import 'package:kayan_app/features/finishes/data/Repos/finishes_repo_impl.dart';
import 'package:kayan_app/features/finishes/data/models/finishes_model.dart';
import 'package:kayan_app/features/finishes/manager/finishes_cubit/finishes_cubit.dart';
import 'package:kayan_app/features/finishes/ui/finishes_details_screen.dart';
import 'package:kayan_app/features/finishes/ui/finishes_screen.dart';
import 'package:kayan_app/features/home/ui/home_screen.dart';
import 'package:kayan_app/features/on_boarding/ui/on_boarding_screen.dart';
import 'package:kayan_app/features/properties/data/models/property_model.dart';
import 'package:kayan_app/features/properties/data/repos/properties_repo_impl.dart';
import 'package:kayan_app/features/properties/manager/properties_cubit/properties_cubit.dart';
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
        builder: (context, state) => BlocProvider(
          create: (context) =>
              PropertiesCubit(propertiesRepo: PropertiesRepoImpl())
                ..fetchProperties(),
          child: const PropertiesScreen(),
        ),
      ),
      GoRoute(
        path: kFinishesScreen,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              FinishesCubit(finishesRepo: FinishesRepoImpl())..fetchFinishes(),
          child: const FinishesScreen(),
        ),
      ),
      GoRoute(
        path: kBlogsScreen,
        builder: (context, state) => const BlogsScreen(),
      ),
      GoRoute(
        path: kPropertyDetailsScreen,
        builder: (context, state) =>
            PropertyDetailsScreen(propertyModel: state.extra as PropertyModel),
      ),
      GoRoute(
        path: kFinishesDetailsScreen,
        builder: (context, state) =>
            FinishesDetailsScreen(finishesModel: state.extra as FinishesModel),
      ),
      GoRoute(
        path: kBlogDetailsScreen,
        builder: (context, state) =>
            BlogDetailsScreen(blogModel: state.extra as BlogModel),
      ),
    ],
  );
}
