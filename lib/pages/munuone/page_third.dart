import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wms_homeone/components/button/luffy_button.dart';
import 'package:wms_homeone/pages/menu/components/luffy_menu.dart';
import 'package:wms_homeone/pages/munuone/components/cause/solo_cause.dart';
import 'package:wms_homeone/pages/munuone/components/product_edit_num.dart';
import 'package:wms_homeone/pages/munuone/components/solobox/solo_box_note.dart';
import 'package:wms_homeone/size_config/size_config.dart';

import '../../components/appbar/appbar.dart';
import '../../components/button/luffy_button_alert.dart';
import '../../components/input_feild.dart';
import '../../services/navigator.dart';
import '../../themeapp/themeapp_style.dart';

class MenuOnePageThird extends StatefulWidget {
  const MenuOnePageThird({Key? key, required this.data}) : super(key: key);
  final List<dynamic> data;

  @override
  State<MenuOnePageThird> createState() => _MenuOnePageThirdState();
}

class _MenuOnePageThirdState extends State<MenuOnePageThird> {
  @override
  Widget build(BuildContext context) {
    var data = widget.data;
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
                LuffySendTo(
                  start: 'ที่เก็บต้นทาง',
                  finals: 'ที่เก็บปลายทาง',
                  color: Styles.successColor,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SoLoInputFeild(
                        borderRadius: 10,
                        verticalPadding: 10,
                        fillColor: Styles.witeColor,
                        hintText: "",
                        prefixIconData: Icons.search,
                        accentColor: Colors.indigo,
                      ),
                    ),
                    Gap(getProportionateScreenHeight(20)),
                    Expanded(
                      child: SoLoInputFeild(
                        borderRadius: 10,
                        verticalPadding: 10,
                        fillColor: Styles.witeColor,
                        hintText: "",
                        prefixIconData: Icons.search,
                        accentColor: Colors.indigo,
                      ),
                    )
                  ],
                ),
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
                const LuffyMenu(
                  bottomHeight: 100,
                  title: '',
                  number: 'หมายเหตุ',
                  padding: 0,
                  subtitle: '',
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

class LuffySendTo extends StatelessWidget {
  final String start;
  final String finals;
  final Color color;

  const LuffySendTo({
    Key? key,
    required this.start,
    required this.finals,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            start,
            textAlign: TextAlign.center,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Container(
              color: color,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              child: const Icon(
                Icons.compare_arrows_rounded,
                color: Colors.white,
              )),
        ),
        Expanded(
            child: Text(
          finals,
          textAlign: TextAlign.center,
        )),
      ],
    );
  }
}
