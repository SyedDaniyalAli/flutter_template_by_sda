import 'package:dynamic_path_url_strategy/dynamic_path_url_strategy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'core/app_navigation/go_router.dart';
import 'shared/constants/api_routes.dart';
import 'shared/constants/env.dart';
import 'shared/dependency_injection/di_container.dart';
import 'shared/theme/app_theme.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  setPathUrlStrategy();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  ApiRoutes.kBaseUrl = Env.baseUrl;
  // Bloc.observer = CustomBlocObserver();

  DependencyInjection.init();

  // FlutterNativeSplash.remove();
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Innuinactun Dictionary',
      builder:
          (context, child) => ResponsiveBreakpoints.builder(
            child: child!,
            breakpoints: [
              const Breakpoint(start: 0, end: 450, name: MOBILE),
              const Breakpoint(start: 451, end: 800, name: TABLET),
              const Breakpoint(start: 801, end: 1200, name: DESKTOP),
              const Breakpoint(start: 1201, end: double.infinity, name: "4K"),
            ],
          ),
      themeAnimationCurve: Curves.fastEaseInToSlowEaseOut,
      theme: AppTheme().kLightTheme,
      darkTheme: AppTheme().kDarkTheme,
    );
  }
}
