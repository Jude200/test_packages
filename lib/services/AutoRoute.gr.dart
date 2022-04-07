// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:get_it_app/screens/HomePage.dart' as _i1;
import 'package:get_it_app/screens/SettingPage.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    MyHomePageRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomePageRouteArgs>();
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i1.MyHomePage(key: args.key, title: args.title));
    },
    SettingRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.Setting());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(MyHomePageRoute.name, path: '/'),
        _i3.RouteConfig(SettingRoute.name, path: '/Setting')
      ];
}

/// generated route for
/// [_i1.MyHomePage]
class MyHomePageRoute extends _i3.PageRouteInfo<MyHomePageRouteArgs> {
  MyHomePageRoute({_i4.Key? key, required String title})
      : super(MyHomePageRoute.name,
            path: '/', args: MyHomePageRouteArgs(key: key, title: title));

  static const String name = 'MyHomePageRoute';
}

class MyHomePageRouteArgs {
  const MyHomePageRouteArgs({this.key, required this.title});

  final _i4.Key? key;

  final String title;

  @override
  String toString() {
    return 'MyHomePageRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i2.Setting]
class SettingRoute extends _i3.PageRouteInfo<void> {
  const SettingRoute() : super(SettingRoute.name, path: '/Setting');

  static const String name = 'SettingRoute';
}
