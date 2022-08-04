import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wms_homeone/components/button/luffy_button_alert.dart';
import 'package:wms_homeone/pages/menutwo/components/sunji_product_delete.dart';
import 'package:wms_homeone/pages/munuone/components/solobox/solo_box_document.dart';
import 'package:wms_homeone/pages/munuone/components/solobox/solo_box_note.dart';
import 'package:wms_homeone/size_config/size_config.dart';

import '../../components/appbar/appbar.dart';
import '../../services/navigator.dart';
import '../../themeapp/themeapp_style.dart';

class SunjiSecondPage extends StatefulWidget {
  const SunjiSecondPage({Key? key}) : super(key: key);

  @override
  State<SunjiSecondPage> createState() => _SunjiSecondPageState();
}

class _SunjiSecondPageState extends State<SunjiSecondPage> {
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
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Styles.mainColor,
                    width: 60,
                    height: 25,
                    child: Center(
                        child: Text(
                      'ซ่อน',
                      style: Styles.textcontentStyle,
                    )),
                  ),
                ),
              ],
            ),
            Gap(getProportionateScreenHeight(20)),
            const SoloDocument(
                title: 'เลขที่ใบขอโอน', subtitle: 'X01-RI6406-00699 [1]'),
            Gap(getProportionateScreenHeight(20)),
            const SoloBox(
                title: 'หมายเหตุ',
                subtitle:
                    'X00-RII6405-00182 ลว.31/05/64 ขออนุมัติโอนสินค้า จากสาขาอุบลราชธานี ไปยัง สาขาศรีสะเกษ (X01-S1-Z00-1 / X02-W1-Z14-2) งานสั่งบ้านดีสถาปนิก X02-SSR645-00155'),
            Gap(getProportionateScreenHeight(20)),
            const SoloDocument(
              title: 'เอกสารอ้างอิง',
              subtitle: 'เลขที่ X01-RI6405-00519',
              icon: Icons.article_rounded,
            ),
            Gap(getProportionateScreenHeight(20)),
            Gap(getProportionateScreenHeight(20)),
            const SunjiDelete(
                titleedite: 'แก้ไขรายการ',
                subtitleedit: 'คุณต้องการแก้ไขรายการนี้',
                title: '1085407',
                subtitle:
                    'หน้าต่างบานเกล็ดซ้อน มุ้ง ESTATE 80x50CM ขาว 80x50CM...',
                subtitleunit: 'หน่วย      PC~ชิ้น',
                requestnum: 'จำนวนขอโอน   5',
                allnum: 'จำนวนจัดได้     4',
                titledelete: 'ลบรายการ',
                subtitledelete: 'คุณต้องการลบรายการสินค้า'),
            Gap(getProportionateScreenHeight(20)),
            Gap(getProportionateScreenHeight(20)),
            const SunjiDelete(
                titleedite: 'แก้ไขรายการ',
                subtitleedit: 'คุณต้องการแก้ไขรายการนี้',
                title: '1085407',
                subtitle:
                    'หน้าต่างบานเกล็ดซ้อน มุ้ง ESTATE 80x50CM ขาว 80x50CM...',
                subtitleunit: 'หน่วย      PC~ชิ้น',
                requestnum: 'จำนวนขอโอน   5',
                allnum: 'จำนวนจัดได้     4',
                titledelete: 'ลบรายการ',
                subtitledelete: 'คุณต้องการลบรายการสินค้า'),
            Gap(getProportionateScreenHeight(20)),
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
