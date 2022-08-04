import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wms_homeone/components/appbar/appbar.dart';
import 'package:wms_homeone/components/button/luffy_button.dart';
import 'package:wms_homeone/components/input_feild.dart';
import 'package:wms_homeone/pages/menu/components/luffy_menu.dart';
import 'package:wms_homeone/pages/munuone/components/solo_list.dart';
import 'package:wms_homeone/pages/munuone/components/soloproduct/solo_product_box.dart';
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
            child: const Icon(Icons.arrow_back_ios_rounded),
            onTap: () => sendToBack(context: context),
          ),
          title: "จัดสินค้าขอโอนสินค้า-ระหว่างคลัง (PP-RI)"),
      body: Padding(
        padding: EdgeInsets.all(getProportionateScreenHeight(20)),
        child: ListView(children: [
          SoLoInputFeild(
            borderRadius: 14,
            verticalPadding: 15,
            onChanged: (str) {
              print(str);
            },
            fillColor: Styles.witeColor,
            hintText: "ค้นหา ใบขอโอนสินค้า หรือ ใบรับสินค้า",
            prefixIconData: Icons.search,
            accentColor: Colors.indigo,
          ),
          Gap(getProportionateScreenHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('3 เอกสาร', style: Styles.textcontentblackStyle),
            ],
          ),
          const SoloList(
            number: "เลขที่เอกสาร",
            subtitle: "X01-RI6405-00519",
            icon: Icons.article_rounded,
            title: '',
          ),
          const SoloList(
            number: "เลขที่เอกสาร",
            subtitle: "X01-RI6405-00519",
            icon: Icons.article_rounded,
            title: '',
          ),
          const SoloList(
            number: "เลขที่เอกสาร",
            subtitle: "X01-RI6405-00519",
            icon: Icons.article_rounded,
            title: '',
          ),
          Gap(getProportionateScreenHeight(100)),
          LuffyButton(
            titleleft: 'ยกเลิก',
            pressleft: () => sendToBack(context: context),
            pressright: () =>
                sendToPage(context: context, routeName: '/MenuOnePage2'),
            titleright: 'เริ่มจัดสินค้า',
          ),
        ]),
      ),
    );
  }
}
