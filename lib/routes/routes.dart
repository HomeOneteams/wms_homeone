import 'package:flutter/material.dart';
import 'package:wms_homeone/pages/menu/menu_page.dart';
import 'package:wms_homeone/pages/munuone/menuone.dart';

import '../pages/munuone/page_fourth.dart';
import '../pages/munuone/page_second.dart';
import '../pages/munuone/page_third.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MenuPage());
      case '/MenuOne':
        return MaterialPageRoute(builder: (_) => const MenuOne());
      case '/MenuOnePage2':
        return MaterialPageRoute(builder: (_) => const MenuOnePageSecond());
      case '/MenuOnePageThird':
        return MaterialPageRoute(builder: (_) => const MenuOnePageThird());
      case '/MenuOnePageFourth':
        return MaterialPageRoute(builder: (_) => const MenuOnePageFourth());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(child: Text('404 Not Found ${settings.name}')),
                ));
    }
  }
}
