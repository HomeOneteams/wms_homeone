import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wms_homeone/components/button/luffy_button.dart';
import 'package:wms_homeone/components/input_feild.dart';
import 'package:wms_homeone/pages/munuone/components/solobox/solo_box_note.dart';
import 'package:wms_homeone/pages/munuone/components/soloproduct/solo_product_box.dart';

import '../../components/appbar/appbar.dart';
import '../../services/navigator.dart';
import '../../size_config/size_config.dart';
import '../../themeapp/themeapp_style.dart';
import '../munuone/components/solobox/solo_box_document.dart';
import 'components/shoper_dropdown.dart';

class ShoperFirstPage extends StatefulWidget {
  const ShoperFirstPage({Key? key}) : super(key: key);

  @override
  State<ShoperFirstPage> createState() => _ShoperFirstPageState();
}

class _ShoperFirstPageState extends State<ShoperFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      appBar: LuffyAppBar(
          icon: GestureDetector(
            child: const Icon(Icons.arrow_back_ios_rounded),
            onTap: () => sendToBack(context: context),
          ),
          title: "รับโอนสินค้าระหว่างสาขา-ปลายทาง (RLB)"),
      body: Padding(
        padding: EdgeInsets.all(getProportionateScreenHeight(20)),
        child: ListView(
          children: [
            const SoloDocument(
              title: 'ใบโอนสินค้าระหว่างสาขา',
              subtitle: 'X01-RI6405-00519',
              icon: Icons.article_rounded,
            ),
            Gap(getProportionateScreenHeight(20)),
            Gap(getProportionateScreenHeight(20)),
            const SoloBox(
              title: 'หมายเหตุ',
              subtitle:
                  'X00-RII6405-00182 ลว.31/05/64 ขออนุมัติโอนสินค้า จากสาขาอุบลราชธานี ไปยัง สาขาศรีสะเกษ (X01-S1-Z00-1 / X02-W1-Z14-2) งานสั่งบ้านดีสถาปนิก X02-SSR645-00155',
              icon: Icons.article,
            ),
            Gap(getProportionateScreenHeight(20)),
            const ShoperDropdown(),
            Gap(getProportionateScreenHeight(20)),
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
            const SoloProduct(
                title: '1085407',
                subtitle:
                    'หน้าต่างบานเกล็ดซ้อน มุ้ง ESTATE 80x50CM ขาว 80x50CM...',
                subtitleunit: 'หน่วย      PC~ชิ้น',
                requestnum: 'จำนวนโอน 5',
                allnum: 'จำนวนรับโอน   4'),
            Gap(getProportionateScreenHeight(20)),
            LuffyButton(
              titleleft: 'ยกเลิก',
              titleright: 'ยืนยัน',
              pressleft: () => sendToBack(context: context),
              pressright: () =>
                  sendToPage(context: context, routeName: '/ShoperSecondPage'),
            )
          ],
        ),
      ),
    );
  }
}
