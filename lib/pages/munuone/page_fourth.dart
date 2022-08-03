import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wms_homeone/components/button/luffy_button_alert.dart';
import 'package:wms_homeone/components/storage/luffy_storage.dart';
import 'package:wms_homeone/pages/munuone/components/product_edit_num.dart';
import 'package:wms_homeone/pages/munuone/components/solobox/solo_box_document.dart';
import 'package:wms_homeone/pages/munuone/components/solobox/solo_box_note.dart';
import 'package:wms_homeone/pages/munuone/components/soloproduct/solo_product_box.dart';

import '../../components/appbar/appbar.dart';
import '../../services/navigator.dart';
import '../../size_config/size_config.dart';
import '../../themeapp/themeapp_style.dart';

class MenuOnePageFourth extends StatefulWidget {
  const MenuOnePageFourth({Key? key}) : super(key: key);

  @override
  State<MenuOnePageFourth> createState() => _MenuOnePageFourthState();
}

class _MenuOnePageFourthState extends State<MenuOnePageFourth> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('เลขที่เอกสารxxx01(RI)',
                    style: Styles.textcontentblackStyle),
              ],
            ),
            Gap(getProportionateScreenHeight(20)),
            const LuffyStorage(
                titleorigin: 'W1-Z05-1 พื้นที่รวม',
                titledestination: 'W1-Z05-1 พื้นที่รวม'),
            Gap(getProportionateScreenHeight(20)),
            const SoloBox(
              title: 'หมายเหตุ',
              subtitle: 'X00-RII6405-00182 ลว.31/05/64 ขออนุมัติโอนสินค้า',
              icon: Icons.article_rounded,
            ),
            Gap(getProportionateScreenHeight(20)),
            const SoloDocument(
              title: 'เอกสารอ้างอิง',
              subtitle: 'เลขที่ X01-RI6405-00519',
              icon: Icons.article_rounded,
            ),
            Gap(getProportionateScreenHeight(20)),
            const SoloProduct(
                title: '1085407',
                subtitle:
                    'หน้าต่างบานเกล็ดซ้อน มุ้ง ESTATE 80x50CM ขาว 80x50CM....',
                subtitleunit: 'หน่วย PC~ชิ้น',
                requestnum: 'จำนวนขอโอน 5',
                allnum: 'จำนวนจัดได้ 4'),
            Gap(getProportionateScreenHeight(80)),
            LuffyAlert(
              titleleft: 'ยกเลิก',
              titleright: 'ยืนยัน',
              titlealert: 'บันทึกจัดสินค้าสำเร็จ',
              subtitlalert: 'ใบขอโอน/รับสินค้าเลขที่ X01-RI6405-00519',
              pressleft: () => sendToBack(context: context),
            )
          ],
        ),
      ),
    );
  }
}
