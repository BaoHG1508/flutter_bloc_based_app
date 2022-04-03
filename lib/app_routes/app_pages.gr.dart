// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../user_interface/login_view/login_view.dart' as _i1;
import '../user_interface/product_screen/product_details.dart' as _i4;
import '../user_interface/product_screen/product_list_screen.dart' as _i2;
import '../user_interface/user_infomation_screen/user_infomation_screen.dart'
    as _i3;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginPage());
    },
    MyHomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.MyHomePage());
    },
    UserRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.UserPage());
    },
    ProductDetail.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ProductDetail());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig('/#redirect',
            path: '/', redirectTo: '/login', fullMatch: true),
        _i5.RouteConfig(LoginRoute.name, path: '/login'),
        _i5.RouteConfig(MyHomeRoute.name, path: '/products'),
        _i5.RouteConfig(UserRoute.name, path: '/user'),
        _i5.RouteConfig(ProductDetail.name, path: '/product_detail')
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.MyHomePage]
class MyHomeRoute extends _i5.PageRouteInfo<void> {
  const MyHomeRoute() : super(MyHomeRoute.name, path: '/products');

  static const String name = 'MyHomeRoute';
}

/// generated route for
/// [_i3.UserPage]
class UserRoute extends _i5.PageRouteInfo<void> {
  const UserRoute() : super(UserRoute.name, path: '/user');

  static const String name = 'UserRoute';
}

/// generated route for
/// [_i4.ProductDetail]
class ProductDetail extends _i5.PageRouteInfo<void> {
  const ProductDetail() : super(ProductDetail.name, path: '/product_detail');

  static const String name = 'ProductDetail';
}
