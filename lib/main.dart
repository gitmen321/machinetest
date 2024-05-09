
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'model/datascreen.dart';

void main() {
  final router = GoRouter(
    initialLocation: '/',
    errorPageBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Error: ${state.uri} not found'),
      ),
    ),
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state, Map<String, String> parameters) {
          return DataScreen(); // Explicitly return a Widget
        },
      ),
    ],

  );

  runApp(MaterialApp.router(
    routerDelegate: router.routerDelegate,
    routeInformationParser: router.routeInformationParser,
  ));
}
