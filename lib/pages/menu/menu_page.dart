import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wms_homeone/services/navigator.dart';
import 'package:wms_homeone/size_config/size_config.dart';

import 'package:wms_homeone/themeapp/themeapp_style.dart';

import '../../components/appbar/appbar.dart';
import '../munuone/request_treasury.dart';
import 'components/body.dart';
import 'components/luffy_menu.dart';
class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
 

  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
      onWillPop: () async{
        return await Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Styles.primaryColor,  
        appBar: LuffyAppBar(title: "โอนสินค้า",         
        ), 
        body: Body(),
      ),
    );
  }
}



