



import 'package:flutter/material.dart';

import '../models/item_menu.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/orders_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/singup_screen.dart';
import '../screens/form_student.dart';

class AppRoute {







  static const String root = '/';
  
// Por cada pantalla que se cree, creamos un elemento de tipo MenuOption
  static final List<MenuOption> listScreens = [
MenuOption(
icon: Icons.house_outlined,
route: '/',
screen: const HomeScreen(),
title: 'House',
),
MenuOption(
icon: Icons.list_outlined,
route: '/orders',
screen: const OrderScreen(),
title: 'orders',
),
MenuOption(
icon: Icons.login_outlined,
route: '/login',
screen: const LoginScreen(),
title: 'Login',
),
MenuOption(
icon: Icons.person_outlined,
route: '/profile',
screen: const ProfileScreen(),
title: 'Profile',
),
MenuOption(
icon: Icons.account_circle_outlined,
route: '/singup',
screen: const SingUpScreen(),
title: 'Sing Up',
),
MenuOption(
icon: Icons.account_circle_outlined,
route: '/singup',
screen: const SingUpScreen(),
title: 'Sing Up',
),
];

//Funcion que retorne un elemento de tipo MAP

static Map<String, Widget Function(BuildContext)> getRoutes() {
Map<String, Widget Function(BuildContext)> routes = {};
for (MenuOption item in listScreens) {
routes[item.route] = (context) => item.screen;
}
return routes;
}


}