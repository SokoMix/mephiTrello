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
            builder: (BuildContext context, GoRouterState state) => const AuthPage(),
            routes: [
              GoRoute(
                  path: RouteNames.projects,
                  builder: (BuildContext context, GoRouterState state) => const ProjectPage(),
                  routes: [
                    GoRoute(
                        path: RouteNames.tasks,
                        builder: (BuildContext context, GoRouterState state) => const HomePage(),
                    ),
                  ],
              ),
              GoRoute(
                path: RouteNames.registration,
                builder: (BuildContext context, GoRouterState state) => const RegistrationPage(),
              ),
            ],
        ),
      ],
  );
}