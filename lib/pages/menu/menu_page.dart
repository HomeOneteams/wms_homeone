import 'package:flutter/material.dart';
import 'package:wms_homeone/size_config/size_config.dart';

import 'package:wms_homeone/themeapp/themeapp_style.dart';

import '../../components/appbar/appbar.dart';
import 'components/body.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      appBar: LuffyAppBar(
        title: "โอนสินค้า",
      ),
      body: const Body(),
    );
  }
}
