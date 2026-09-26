import 'package:cineflat/presentation/pages/favorite/favoritescreen.dart';
import 'package:cineflat/presentation/pages/home/homescreen.dart';
import 'package:cineflat/presentation/pages/search/searchscreen.dart';
import 'package:cineflat/presentation/pages/splash/splashscreen.dart';
import 'package:cineflat/presentation/pages/widget/bottom_tab.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter navigationRoute = GoRouter(
  initialLocation: '/',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return BottomTabWrap(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/home',
              builder: (context, state) => const HomeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/search',
              builder: (context, state) => const SearchScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/favorite',
              builder: (context, state) => const FavoriteScreen(),
            ),
          ],
        ),
      ]
    ),

    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
  ],
);