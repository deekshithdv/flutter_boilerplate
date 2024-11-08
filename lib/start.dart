import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/core/route/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Start extends ConsumerStatefulWidget {
  const Start({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StartState();
}

class _StartState extends ConsumerState<Start> {
  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.white),
        primaryColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      routerDelegate: AutoRouterDelegate(
        appRouter,
        navigatorObservers: () => [AppRouteObserver()],
      ),
      routeInformationProvider: appRouter.routeInfoProvider(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
