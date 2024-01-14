import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mephi_trello/pages/auth/auth_page.dart';
import 'package:mephi_trello/pages/auth/registration_page.dart';
import 'package:mephi_trello/pages/projects/project_page.dart';
import 'package:mephi_trello/router/route_names.dart';

import '../pages/homepage/homepage.dart';

class MyRouter {
  MyRouter();

  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: RouteNames.login,
        name: RouteNames.login,
        builder: (BuildContext context, GoRouterState state) =>
            const AuthPage(),
        routes: [
          GoRoute(
            path: RouteNames.projects,
            name: RouteNames.projects,
            builder: (BuildContext context, GoRouterState state) =>
                const ProjectPage(),
            routes: [
              GoRoute(
                path: RouteNames.tasks,
                name: RouteNames.tasks,
                builder: (BuildContext context, GoRouterState state) =>
                    const HomePage(),
                pageBuilder: (BuildContext context, GoRouterState state) =>
                    CustomTransitionPage(
                  child: const HomePage(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          FadeTransition(
                    opacity: animation,
                    child: child,
                  ),
                ),
              ),
            ],
          ),
          GoRoute(
            path: RouteNames.registration,
            name: RouteNames.registration,
            builder: (BuildContext context, GoRouterState state) =>
                const RegistrationPage(),
          ),
        ],
      ),
    ],
  );
}
