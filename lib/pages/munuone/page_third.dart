import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wms_homeone/components/button/luffy_button.dart';
import 'package:wms_homeone/pages/munuone/components/cause/solo_cause.dart';
import 'package:wms_homeone/pages/munuone/components/product_edit_num.dart';
import 'package:wms_homeone/pages/munuone/components/solobox/solo_box_note.dart';
import 'package:wms_homeone/size_config/size_config.dart';

import '../../components/appbar/appbar.dart';
import '../../components/button/luffy_button_alert.dart';
import '../../services/navigator.dart';
import '../../themeapp/themeapp_style.dart';

class MenuOnePageThird extends StatefulWidget {
  const MenuOnePageThird({Key? key}) : super(key: key);

  @override
  State<MenuOnePageThird> createState() => _MenuOnePageThirdState();
}

class _MenuOnePageThirdState extends State<MenuOnePageThird> {
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
        child: ListView(
          children: [
            Column(
              children: [
                Gap(getProportionateScreenHeight(20)),
                const SoloEditProduct(
                  title: '1085407',
                  subtitle:
                      'หน้าต่างบานเกล็ดซ้อน มุ้ง ESTATE 80x50CM ขาว 80x50CM',
                  subtitlenum: 'จำนวนขอโอน 4 ST~ชุด',
                ),
                Gap(getProportionateScreenHeight(20)),
                const SoloCause(
                    title: 'สาเหตุที่จัดได้ไม่ครบ',
                    subtitle: 'เลือกสาเหตุที่จัดได้ไม่ครบ'),
                Gap(getProportionateScreenHeight(20)),
                const SoloBox(
                  title: 'หมายเหตุ',
                  subtitle: 'X00-RII6405-00182 ลว.31/05/64 ขออนุมัติโอนสินค้า',
                  icon: Icons.article_rounded,
                ),
                Gap(getProportionateScreenHeight(120)),
                LuffyButton(
                  titleleft: 'ยกเลิก',
                  titleright: 'บันทึก',
                  pressleft: () => sendToBack(context: context),
                  pressright: () => sendToPage(
                      context: context, routeName: '/MenuOnePageFourth'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
