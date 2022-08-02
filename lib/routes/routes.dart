import 'package:flutter/material.dart';
import 'package:wms_homeone/pages/menu/menu_page.dart';
import 'package:wms_homeone/pages/munuone/menuone.dart';


class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MenuPage());
      case '/MenuOne':
        return MaterialPageRoute(builder: (_) => const MenuOne());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(child: Text('404 Not Found ${settings.name}')),
                ));
    }
  }
}
