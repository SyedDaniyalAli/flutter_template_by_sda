import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/page_not_found/presentation/page_not_found.dart';
import '../../features/splash_screen/splash_screen.dart';
import 'route_names.dart';

final GoRouter router = GoRouter(
  initialLocation: RouteNames.splash,
  routes: [
    GoRoute(
      path: RouteNames.splash,
      pageBuilder:
          (context, state) => const NoTransitionPage(child: SplashScreen()),
    ),
    ShellRoute(
      builder: (context, state, child) {
        return MainLayout(child: child);
      },
      routes: [
        // GoRoute(
        //   path: RouteNames.words,
        //   pageBuilder:
        //       (context, state) =>
        //           const NoTransitionPage(child: SyllabaryScreen()),
        // ),
      ],
    ),
  ],
  errorBuilder: (context, state) => const NotFoundScreen(),
  redirect: (context, state) {
    return null;
  },
  extraCodec: null,
  refreshListenable: null,
  redirectLimit: 5,
  routerNeglect: false,
  overridePlatformDefaultLocation: false,
  initialExtra: null,
  observers: [NavigatorObserver()],
  debugLogDiagnostics: true,
  navigatorKey: GlobalKey<NavigatorState>(),
  restorationScopeId: 'root',
  requestFocus: true,
);
