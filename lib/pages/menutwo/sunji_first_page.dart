import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wms_homeone/pages/munuone/components/solobox/solo_box_document.dart';
import 'package:wms_homeone/pages/munuone/components/solobox/solo_box_note.dart';

import '../../components/appbar/appbar.dart';
import '../../components/button/luffy_button.dart';
import '../../components/input_feild.dart';
import '../../services/navigator.dart';
import '../../size_config/size_config.dart';
import '../../themeapp/themeapp_style.dart';
import '../munuone/components/solo_list.dart';

class SunjiFirstPage extends StatefulWidget {
  const SunjiFirstPage({Key? key}) : super(key: key);

  @override
  State<SunjiFirstPage> createState() => _SunjiFirstPageState();
}

class _SunjiFirstPageState extends State<SunjiFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      appBar: LuffyAppBar(
          icon: GestureDetector(
            child: const Icon(Icons.arrow_back_ios_rounded),
            onTap: () => sendToBack(context: context),
          ),
          title: "โอนสินค้า-ระหว่างคลัง (RL)"),
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
          Gap(getProportionateScreenHeight(20)),
          const SoloDocument(
              title: 'ใบขอโอน/รับสินค้า', subtitle: 'X01-RI6405-00519'),
          Gap(getProportionateScreenHeight(20)),
          const SoloDocument(
              title: 'ใบขอโอน/รับสินค้า', subtitle: 'X01-RI6405-00519'),
          Gap(getProportionateScreenHeight(20)),
          const SoloDocument(
              title: 'ใบขอโอน/รับสินค้า', subtitle: 'X01-RI6405-00519'),
          Gap(getProportionateScreenHeight(200)),
          LuffyButton(
            titleleft: 'ยกเลิก',
            pressleft: () => sendToBack(context: context),
            pressright: () =>
                sendToPage(context: context, routeName: '/SunjiSecondPage'),
            titleright: 'ตกลง',
          ),
        ]),
      ),
    );
  }
}
