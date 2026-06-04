import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kayan_app/core/utils/app_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'l10n/app_localizations.dart';
import 'manager/locale_cubit/locale_cubit.dart';

void main() async {

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  
  await dotenv.load(fileName: ".env");
  final supabaseUrl = dotenv.get('VITE_SUPABASE_URL');
  final supabaseAnonKey = dotenv.get('VITE_SUPABASE_ANON_KEY');

  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseAnonKey);

  final prefs = await SharedPreferences.getInstance();
  final bool isFirstTime = prefs.getBool('isFirstTime') ?? true;

  FlutterNativeSplash.remove();

  runApp(KayanApp(isFirstTime: isFirstTime));
}

class KayanApp extends StatelessWidget {
  final bool isFirstTime;
  const KayanApp({super.key, required this.isFirstTime});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocaleCubit(),
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return BlocBuilder<LocaleCubit, LocaleState>(
            builder: (context, state) {
              final isArabic = state.locale.languageCode == 'ar';
              return MaterialApp.router(
                routerConfig: AppRouter.router(isFirstTime),
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  fontFamily: isArabic ? 'Cairo' : null,
                  colorScheme: ColorScheme.fromSeed(
                    seedColor: Colors.deepPurple,
                    primary: Colors.deepPurple,
                    secondary: Colors.deepPurpleAccent,
                    surface: Colors.white,
                  ),
                  scaffoldBackgroundColor: Colors.white,
                  useMaterial3: true,
                ),
                supportedLocales: AppLocalizations.supportedLocales,
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                locale: state.locale,
              );
            },
          );
        },
      ),
    );
  }
}
