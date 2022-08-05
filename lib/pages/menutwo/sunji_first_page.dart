import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wms_homeone/pages/menutwo/sunji_second_page.dart';
import 'package:wms_homeone/pages/munuone/components/solobox/solo_box_document.dart';
import 'package:wms_homeone/pages/munuone/components/solobox/solo_box_note.dart';

import '../../components/appbar/appbar.dart';
import '../../components/button/luffy_button.dart';
import '../../components/input_feild.dart';
import '../../data.dart';
import '../../services/navigator.dart';
import '../../size_config/size_config.dart';
import '../../themeapp/themeapp_style.dart';
import '../munuone/components/solo_list.dart';
import '../munuone/page_second.dart';

class SunjiFirstPage extends StatefulWidget {
  const SunjiFirstPage({Key? key}) : super(key: key);

  @override
  State<SunjiFirstPage> createState() => _SunjiFirstPageState();
}

class _SunjiFirstPageState extends State<SunjiFirstPage> {
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
          title: "โอนสินค้า-ระหว่างที่เก็บ (RL)"),
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
                              title: 'ใบขอโอน/รับสินค้า',
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
                              builder: (_) => SunjiSecondPage(data: data))),
                      titleright: 'ตกลง',
                    ),
                  ],
                )
            ],
          )),
    );
  }
}
