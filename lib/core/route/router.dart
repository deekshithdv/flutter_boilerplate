import 'package:auto_route/auto_route.dart';
import 'package:flutter_boilerplate/core/route/router.gr.dart';

class AppRouteObserver extends AutoRouterObserver {
  AppRouteObserver();
}

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  AppRouter();

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/'),
      ];
}
