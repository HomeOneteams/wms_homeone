import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wms_homeone/components/appbar/appbar.dart';
import 'package:wms_homeone/components/button/luffy_button.dart';
import 'package:wms_homeone/components/input_feild.dart';
import 'package:wms_homeone/pages/munuone/components/solobox/solo_box_document.dart';
import 'package:wms_homeone/pages/munuone/page_second.dart';
import 'package:wms_homeone/services/navigator.dart';
import 'package:wms_homeone/size_config/size_config.dart';
import 'package:wms_homeone/themeapp/themeapp_style.dart';

import '../../data.dart';

class MenuOne extends StatefulWidget {
  const MenuOne({Key? key}) : super(key: key);

  @override
  State<MenuOne> createState() => _MenuOneState();
}

class _MenuOneState extends State<MenuOne> {
  var data = [];
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
          child: Stack(
            children: [
              ListView(children: [
                SoLoInputFeild(
                  borderRadius: 14,
                  verticalPadding: 15,
                  onChanged: (str) {
                    print(str);

                    data = demoData;

                    print(demoData.length);
                    setState(() {});
                  },
                  fillColor: Styles.witeColor,
                  hintText: "ค้นหา ใบขอโอนสินค้า หรือ ใบรับสินค้า",
                  prefixIconData: Icons.search,
                  accentColor: Colors.indigo,
                ),
                Gap(getProportionateScreenHeight(20)),
                if (data.isNotEmpty)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('${data.length} เอกสาร',
                          style: Styles.textcontentblackStyle),
                    ],
                  ),
                Gap(getProportionateScreenHeight(20)),
                ...List.generate(
                    (data).length,
                    (index) => Column(
                          children: [
                            const SoloDocument(
                              title: 'เลขที่เอกสาร',
                              subtitle: 'X01-RI6405-00519',
                              icon: Icons.article_rounded,
                            ),
                            Gap(getProportionateScreenHeight(20)),
                          ],
                        )),
                Gap(getProportionateScreenHeight(50)),
              ]),
              if (data.isNotEmpty)
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    LuffyButton(
                      titleleft: 'ยกเลิก',
                      pressleft: () => sendToBack(context: context),
                      pressright: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => MenuOnePageSecond(data: data))),
                      titleright: 'เริ่มจัดสินค้า',
                    ),
                  ],
                )
            ],
          )),
    );
  }
}
