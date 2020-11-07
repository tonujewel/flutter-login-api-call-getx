import 'package:flutter_login_getx/views/home/home_view.dart';
import 'package:flutter_login_getx/views/login/login_screen.dart';
import 'package:get/get.dart';

class RoutesList{

  static final route = [
    GetPage(name: '/loginView', page: () => LoginView()),
    GetPage(name: '/homeView', page: () => HomeView()),

  ];
}