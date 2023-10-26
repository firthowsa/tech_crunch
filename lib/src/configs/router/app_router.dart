
import 'package:auto_route/auto_route.dart';

import  'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {

  @override
  List<AutoRoute> get routes => [
    /// routes go here
    AutoRoute(page: TechCrunchView.page,initial: true),
    AutoRoute(page: RouteB.page),
    AutoRoute(page: RouteC.page)
  ];
}