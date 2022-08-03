import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:wms_homeone/components/button/luffy_button.dart';
import 'package:wms_homeone/components/storage/luffy_storage.dart';

import '../../components/appbar/appbar.dart';
import '../../components/input_feild.dart';
import '../../services/navigator.dart';
import '../../size_config/size_config.dart';
import '../../themeapp/themeapp_style.dart';
import '../menu/components/luffy_menu.dart';
import 'components/solo_list.dart';
import 'components/solobox/solo_box_note.dart';
import 'components/soloproduct/solo_product_box.dart';

class MenuOnePageSecond extends StatefulWidget {
  const MenuOnePageSecond({Key? key}) : super(key: key);

  @override
  State<MenuOnePageSecond> createState() => _MenuOnePageSecondState();
}

class _MenuOnePageSecondState extends State<MenuOnePageSecond> {
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
                Text('X01-RI6405-00519', style: Styles.textcontentblackStyle),
              ],
            ),
            Gap(getProportionateScreenHeight(20)),
            SoLoInputFeild(
              borderRadius: 14,
              verticalPadding: 15,
              onChanged: (str) {
                print(str);
              },
              fillColor: Styles.witeColor,
              hintText: "สแกน/ค้นหา บาร์โค้ด รหัส ชื่อสินค้า",
              prefixIconData: Icons.search,
              accentColor: Colors.indigo,
            ),
            Gap(getProportionateScreenHeight(20)),
            const LuffyStorage(
              titleorigin: 'W1-Z05-1 พื้นที่รวม',
              titledestination: 'W1-Z05-1 พื้นที่รวม',
            ),
            Gap(getProportionateScreenHeight(20)),
            const SoloBox(
              title: 'หมายเหตุ',
              subtitle: 'เพื่อสต็อคขายปลีก',
              icon: Icons.article_rounded,
            ),
            Gap(getProportionateScreenHeight(20)),
            const SoloBox(
              title: 'เอกสารอ้างอิง',
              subtitle: 'เลขที่ X01-RI6405-00519',
              icon: Icons.article_rounded,
            ),
            Gap(getProportionateScreenHeight(20)),
            const SoloProduct(
              title: '1085407',
              subtitle: 'หน้าต่างบานเกล็ดซ้อน มุ้ง ESTATE 80x50CM ขาว 80x50CM.',
              subtitleunit: 'หน่วย PC~ชิ้น',
              requestnum: 'จำนวนขอโอน 5',
              allnum: 'จำนวนจัดได้',
            ),
            Gap(getProportionateScreenHeight(50)),
            LuffyButton(
              titleleft: 'ยกเลิก',
              titleright: 'ยืนยัน',
              pressleft: () => sendToBack(context: context),
              pressright: () =>
                  sendToPage(context: context, routeName: '/MenuOnePageThird'),
            )
          ],
        ),
      ),
    );
  }
}
