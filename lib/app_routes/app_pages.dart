import 'package:auto_route/auto_route.dart';
import 'package:bloccounter/user_interface/login_view/login_view.dart';
import 'package:bloccounter/user_interface/user_infomation_screen/user_infomation_screen.dart';

import '../user_interface/product_screen/product_details.dart';
import '../user_interface/product_screen/product_list_screen.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(path: '/login', page: LoginPage, initial: true),
  AutoRoute(path: '/products', page: MyHomePage),
  AutoRoute(path: '/user', page: UserPage),
  AutoRoute(
    path: '/product_detail',
    page: ProductDetail,
  )
])
class $AppRouter {}
