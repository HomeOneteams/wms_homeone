import 'package:flutter/material.dart';
import 'package:wms_homeone/pages/menu/menu_page.dart';
import 'package:wms_homeone/pages/munuone/menuone.dart';

import '../pages/menuthree/shoper_first_page.dart';
import '../pages/menuthree/shoper_second_page.dart';
import '../pages/menutwo/sunji_first_page.dart';
import '../pages/menutwo/sunji_second_page.dart';
import '../pages/munuone/page_fourth.dart';
import '../pages/munuone/page_third.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MenuPage());
      case '/MenuOne':
        return MaterialPageRoute(builder: (_) => const MenuOne());
      case '/MenuOnePageThird':
        return MaterialPageRoute(builder: (_) => const MenuOnePageThird());
      case '/MenuOnePageFourth':
        return MaterialPageRoute(builder: (_) => const MenuOnePageFourth());
      case '/SunjiFirstPage':
        return MaterialPageRoute(builder: (_) => const SunjiFirstPage());
      case '/SunjiSecondPage':
        return MaterialPageRoute(builder: (_) => const SunjiSecondPage());
      case '/ShoperFirstPage':
        return MaterialPageRoute(builder: (_) => const ShoperFirstPage());
      case '/ShoperSecondPage':
        return MaterialPageRoute(builder: (_) => const ShoperSecondPage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(child: Text('404 Not Found ${settings.name}')),
                ));
    }
  }
}
