
import 'package:flutter/material.dart';
import 'package:wms_homeone/components/appbar/appbar.dart';
import 'package:wms_homeone/components/input_feild.dart';
import 'package:wms_homeone/services/navigator.dart';
import 'package:wms_homeone/size_config/size_config.dart';
import 'package:wms_homeone/themeapp/themeapp_style.dart';

class MenuOne extends StatefulWidget {
  const MenuOne({Key? key}) : super(key: key);

  @override
  State<MenuOne> createState() => _MenuOneState();
}

class _MenuOneState extends State<MenuOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      appBar: LuffyAppBar(
        icon: GestureDetector(
          child:const Icon(Icons.arrow_back_ios_rounded),
          onTap: ()=>sendToBack(context: context),
        ),
        title: "ขอโอนสินค้า-ระหว่างคลัง (RI)"),
        body: Padding(
          padding:  EdgeInsets.all(getProportionateScreenHeight(20)),
          child: ListView(children: [
            SoLoInputFeild(
              borderRadius: 14, 
              verticalPadding: 15,           
              onChanged: (str){
                print(str);
              },  
              fillColor: Styles.witeColor,
                  hintText: "ค้นหา ใบขอโอนสินค้า หรือ ใบรับสินค้า",
                  prefixIconData: Icons.search,
                  accentColor: Colors.indigo,
                ),
          ]),
        ),
    );
  }
}



