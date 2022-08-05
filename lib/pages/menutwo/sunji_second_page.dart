import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wms_homeone/components/button/luffy_button_alert.dart';
import 'package:wms_homeone/pages/menutwo/components/sunji_product_delete.dart';
import 'package:wms_homeone/pages/munuone/components/solobox/solo_box_document.dart';
import 'package:wms_homeone/pages/munuone/components/solobox/solo_box_note.dart';
import 'package:wms_homeone/size_config/size_config.dart';

import '../../components/appbar/appbar.dart';
import '../../components/button/luffy_button.dart';
import '../../components/input_feild.dart';
import '../../services/navigator.dart';
import '../../themeapp/themeapp_style.dart';
import '../menu/components/luffy_menu.dart';
import '../munuone/page_second.dart';
import '../munuone/page_third.dart';

class SunjiSecondPage extends StatefulWidget {
  const SunjiSecondPage({Key? key, required this.data}) : super(key: key);
  final List<dynamic> data;

  @override
  State<SunjiSecondPage> createState() => _SunjiSecondPageState();
}

class _SunjiSecondPageState extends State<SunjiSecondPage> {
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
          title: "โอนสินค้า-ระหว่างคลัง (RL)"),
      body: Padding(
          padding: EdgeInsets.all(getProportionateScreenHeight(20)),
          child: Stack(
            children: [
              ListView(children: [
                Gap(getProportionateScreenHeight(20)),
                ...List.generate((data).length, (index) {
                  var _list = data[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(getProportionateScreenHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${_list['head']['docFormat']}',
                            style: Styles.textcontentblackStyle,
                          ),
                          GestureDetector(
                            onTap: () {
                              _list['head']['isTest'] =
                                  !_list['head']['isTest'];
                              setState(() {});
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 3),
                                color: Styles.mainColor,
                                child: Text(
                                  "${!_list['head']['isTest'] ? "hide" : "show"}",
                                  style: Styles.textcontentStyle
                                      .copyWith(fontSize: 14),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Gap(getProportionateScreenHeight(20)),
                      if (!_list['head']['isTest']) ...[
                        Gap(getProportionateScreenHeight(20)),
                        LuffyMenu(
                          padding: 0,
                          title: '',
                          number: 'เลขที่ใบขอโอน',
                          subtitle: '${_list['head']['DocRef']}',
                          icon: Icons.article_rounded,
                        ),
                        LuffyMenu(
                          padding: 0,
                          title: '',
                          number: 'หมายเหตุ',
                          subtitle: '${_list['head']['DocRef']}',
                          icon: Icons.article_rounded,
                          bottomHeight: 100,
                        ),
                        LuffyMenu(
                          padding: 0,
                          title: '',
                          number: 'เอกสารอ้างอิง',
                          subtitle: '${_list['head']['DocRef']}',
                          icon: Icons.article_rounded,
                        ),
                        LuffySendTo(
                            start: 'ที่เก็บต้นทาง',
                            finals: 'ที่เก็บปลายทาง',
                            color: Styles.successColor),
                        Gap(getProportionateScreenHeight(20)),
                        Row(
                          children: [
                            Expanded(
                              child: SoLoInputFeild(
                                borderRadius: 10,
                                verticalPadding: 10,
                                fillColor: Styles.witeColor,
                                hintText: "${_list['head']['branchCode']}",
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
                                hintText: "${_list['head']['branchCode']}",
                                prefixIconData: Icons.search,
                                accentColor: Colors.indigo,
                              ),
                            )
                          ],
                        ),
                        LuffyMenu(
                          padding: 0,
                          title: '',
                          number: '1085407',
                          mainAxisAlignment: MainAxisAlignment.start,
                          bottomWidget: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Expanded(
                                    child: Text(
                                      'หน้าต่างบานเกล็ดซ้อน มุ้ง ESTATE 80x50CM ',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                              Gap(getProportionateScreenHeight(10)),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            getProportionateScreenWidth(10)),
                                    child: Row(
                                      children: const [
                                        Expanded(
                                            child: Text('หน่วย      PC~ชิ้น')),
                                        Expanded(
                                            child: Text(
                                          'หน่วย      PC~ชิ้น',
                                          textAlign: TextAlign.end,
                                        )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            getProportionateScreenWidth(10)),
                                    child: Row(
                                      children: const [
                                        Expanded(
                                            child: Text(
                                          'หน่วย      PC~ชิ้น',
                                          textAlign: TextAlign.end,
                                        )),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          icon: Icons.article_rounded,
                          headColor: Styles.boxredColor,
                          bottomHeight: 140,
                        ),
                        LuffySendTo(
                            start: 'ที่เก็บต้นทาง',
                            finals: 'ที่เก็บปลายทาง',
                            color: Styles.successColor),
                        Gap(getProportionateScreenHeight(20)),
                        Row(
                          children: [
                            Expanded(
                              child: SoLoInputFeild(
                                borderRadius: 10,
                                verticalPadding: 10,
                                fillColor: Styles.witeColor,
                                hintText: "${_list['head']['branchCode']}",
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
                                hintText: "${_list['head']['branchCode']}",
                                prefixIconData: Icons.search,
                                accentColor: Colors.indigo,
                              ),
                            )
                          ],
                        ),
                        LuffyMenu(
                          padding: 0,
                          title: '',
                          number: '1085407',
                          mainAxisAlignment: MainAxisAlignment.start,
                          bottomWidget: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Expanded(
                                    child: Text(
                                      'หน้าต่างบานเกล็ดซ้อน มุ้ง ESTATE 80x50CM ',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                              Gap(getProportionateScreenHeight(10)),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            getProportionateScreenWidth(10)),
                                    child: Row(
                                      children: const [
                                        Expanded(
                                            child: Text('หน่วย      PC~ชิ้น')),
                                        Expanded(
                                            child: Text(
                                          'หน่วย      PC~ชิ้น',
                                          textAlign: TextAlign.end,
                                        )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            getProportionateScreenWidth(10)),
                                    child: Row(
                                      children: const [
                                        Expanded(
                                            child: Text(
                                          'หน่วย      PC~ชิ้น',
                                          textAlign: TextAlign.end,
                                        )),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          icon: Icons.article_rounded,
                          headColor: Styles.boxredColor,
                          bottomHeight: 140,
                        ),
                      ]
                    ],
                  );
                }),
                Gap(getProportionateScreenHeight(50)),
              ]),
              if (data.isNotEmpty)
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    LuffyAlert(
                        titleleft: 'ยกเลิก',
                        titleright: 'ยืนยัน',
                        titlealert: 'บันทึกจัดสินค้าสำเร็จ',
                        subtitlalert:
                            'ใบขอโอน/รับสินค้าเลขที่ X01-RI6405-00519')
                  ],
                )
            ],
          )),
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
