// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:tech_crunch/src/presentation/views/screen_a.dart' as _i1;
import 'package:tech_crunch/src/presentation/views/screen_b.dart' as _i2;
import 'package:tech_crunch/src/presentation/views/screen_c.dart' as _i3;
import 'package:tech_crunch/src/presentation/views/screen_d.dart' as _i4;
import 'package:tech_crunch/src/presentation/views/tech_crunch_view.dart'
    as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    RouteA.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ScreenA(),
      );
    },
    RouteB.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ScreenB(),
      );
    },
    RouteC.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ScreenC(),
      );
    },
    RouteD.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ScreenD(),
      );
    },
    TechCrunchView.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.TechCrunchView(),
      );
    },
  };
}

/// generated route for
/// [_i1.ScreenA]
class RouteA extends _i6.PageRouteInfo<void> {
  const RouteA({List<_i6.PageRouteInfo>? children})
      : super(
          RouteA.name,
          initialChildren: children,
        );

  static const String name = 'RouteA';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ScreenB]
class RouteB extends _i6.PageRouteInfo<void> {
  const RouteB({List<_i6.PageRouteInfo>? children})
      : super(
          RouteB.name,
          initialChildren: children,
        );

  static const String name = 'RouteB';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ScreenC]
class RouteC extends _i6.PageRouteInfo<void> {
  const RouteC({List<_i6.PageRouteInfo>? children})
      : super(
          RouteC.name,
          initialChildren: children,
        );

  static const String name = 'RouteC';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ScreenD]
class RouteD extends _i6.PageRouteInfo<void> {
  const RouteD({List<_i6.PageRouteInfo>? children})
      : super(
          RouteD.name,
          initialChildren: children,
        );

  static const String name = 'RouteD';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.TechCrunchView]
class TechCrunchView extends _i6.PageRouteInfo<void> {
  const TechCrunchView({List<_i6.PageRouteInfo>? children})
      : super(
          TechCrunchView.name,
          initialChildren: children,
        );

  static const String name = 'TechCrunchView';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
