import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wms_homeone/components/button/luffy_button.dart';
import 'package:wms_homeone/data.dart';
import 'package:wms_homeone/pages/munuone/page_third.dart';

import '../../components/appbar/appbar.dart';
import '../../components/input_feild.dart';
import '../../services/navigator.dart';
import '../../size_config/size_config.dart';
import '../../themeapp/themeapp_style.dart';
import '../menu/components/luffy_menu.dart';
import 'components/solobox/solo_box_document.dart';
import 'components/soloproduct/solo_product_box.dart';

class MenuOnePageSecond extends StatefulWidget {
  const MenuOnePageSecond({Key? key, required this.data}) : super(key: key);
  final List<dynamic> data;
  @override
  State<MenuOnePageSecond> createState() => _MenuOnePageSecondState();
}

class _MenuOnePageSecondState extends State<MenuOnePageSecond> {
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
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
          child: Stack(
            children: [
              ListView(children: [
                // Gap(getProportionateScreenHeight(20)),
                ...List.generate((data).length, (index) {
                  var _list = data[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(getProportionateScreenHeight(10)),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: getProportionateScreenHeight(20)),
                          color: (_list["head"]["detail"] as List).any(
                                  (element) =>
                                      element["statusSuccess"] == false)
                              ? Colors.white
                              : Styles.successColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '  ${_list['head']['docFormat']}',
                                style: Styles.textcontentblackStyle.copyWith(
                                    color: (_list["head"]["detail"] as List)
                                            .any((element) =>
                                                element["statusSuccess"] ==
                                                false)
                                        ? Colors.black
                                        : Colors.white),
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
                                      "${_list['head']['isTest'] ? "ซ่อน" : "แสดง"}",
                                      style: Styles.textcontentStyle
                                          .copyWith(fontSize: 14),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Gap(getProportionateScreenHeight(
                          !_list['head']['isTest'] ? 0 : 20)),
                      if (_list['head']['isTest']) ...[
                        SoLoInputFeild(
                          borderRadius: 14,
                          verticalPadding: 15,
                          onSubmitted: (str) async {
                            var results = (_list['head']["detail"] as List)
                                .where((element) =>
                                    element["itemCode"] == str ||
                                    element["itemName"] == str)
                                .toList();

                            // print(results);
                            results.asMap().forEach((key, value) {
                              updateStatusSearchItem(
                                  index: index,
                                  indexdetail: value["lineNumber"]);
                            });
                            var res = await Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => MenuOnePageThird(
                                          data: data,
                                          index: index,
                                        )));

                            results.asMap().forEach((key, value) {
                              updateStatusSearchItem(
                                  index: index,
                                  indexdetail: value["lineNumber"],
                                  status: false);
                            });

                            if (res == 'success') {
                              setState(() {});
                            }
                          },
                          onChanged: (str) {
                            //
                          },
                          fillColor: Styles.witeColor,
                          hintText: "สแกน/ค้นหา บาร์โค้ด รหัส ชื่อสินค้า",
                          prefixIconData: Icons.search,
                          accentColor: Colors.indigo,
                        ),
                        Gap(getProportionateScreenHeight(20)),
                        LuffyMenu(
                          padding: 0,
                          title: '',
                          number: 'หมายเหตุ',
                          subtitle: '${_list['head']['Remark']}',
                          icon: Icons.article_rounded,
                        ),
                        LuffyMenu(
                          padding: 0,
                          title: '',
                          number: 'เอกสารอ้างอิง',
                          subtitle: '${_list['head']['DocRef']}',
                          icon: Icons.article_rounded,
                        ),
                        ...List.generate(
                            (_list['head']['detail'] as List).length, (index) {
                          var detail = _list['head']['detail'][index];
                          return LuffyMenu(
                            padding: 0,
                            headColor: detail['statusSuccess']
                                ? Styles.successColor
                                : Styles.boxredColor,
                            title: '',
                            number: '${detail['itemCode']}',
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
                                    LuffySendTo(
                                        start: 'ที่เก็บต้นทาง',
                                        finals: 'ที่เก็บปลายทาง',
                                        color: Styles.successColor),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: SoLoInputFeild(
                                            borderRadius: 10,
                                            verticalPadding: 10,
                                            fillColor: Styles.witeColor,
                                            hintText:
                                                "${_list['head']['branchCode']}",
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
                                            hintText:
                                                "${_list['head']['branchCode']}",
                                            prefixIconData: Icons.search,
                                            accentColor: Colors.indigo,
                                          ),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal:
                                              getProportionateScreenWidth(10)),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child:
                                                  Text('หน่วย      PC~ชิ้น')),
                                          Expanded(
                                              child: Text(
                                            'จำนวนขอโอน      ${detail['qty']}',
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
                                        children: [
                                          Expanded(
                                              child: Text(
                                            'จำนวนจัดได้      ${detail['eventQty']}',
                                            textAlign: TextAlign.end,
                                          )),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            icon: Icons.local_activity,
                            bottomHeight: 170,
                          );
                        })
                      ],
                    ],
                  );
                }),
                Gap(getProportionateScreenHeight(70)),
              ]),
              if (data.isNotEmpty)
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    LuffyButton(
                      titleleft: 'ยกเลิก',
                      pressleft: () => sendToBack(context: context),
                      pressright: () => {print(demoData)},
                      titleright: 'ยืนยัน',
                    ),
                    Gap(getProportionateScreenHeight(20)),
                  ],
                )
            ],
          )),

      //  Padding(
      //   padding: EdgeInsets.all(getProportionateScreenHeight(20)),
      //   child: ListView(
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         children: [
      //           Text('X01-RI6405-00519', style: Styles.textcontentblackStyle),
      //         ],
      //       ),
      //       Gap(getProportionateScreenHeight(20)),
      //       SoLoInputFeild(
      //         borderRadius: 14,
      //         verticalPadding: 15,
      //         onChanged: (str) {
      //           print(str);
      //         },
      //         fillColor: Styles.witeColor,
      //         hintText: "สแกน/ค้นหา บาร์โค้ด รหัส ชื่อสินค้า",
      //         prefixIconData: Icons.search,
      //         accentColor: Colors.indigo,
      //       ),
      //       Gap(getProportionateScreenHeight(20)),
      //       Gap(getProportionateScreenHeight(20)),
      //       const SoloBox(
      //         title: 'หมายเหตุ',
      //         subtitle: 'เพื่อสต็อคขายปลีก',
      //         icon: Icons.article_rounded,
      //       ),
      //       Gap(getProportionateScreenHeight(20)),
      //       const SoloDocument(
      //         title: 'เอกสารอ้างอิง',
      //         subtitle: 'เลขที่ X01-RI6405-00519',
      //         icon: Icons.article_rounded,
      //       ),
      //       Gap(getProportionateScreenHeight(20)),
      //       const SoloProduct(
      //         title: '1085407',
      //         subtitle: 'หน้าต่างบานเกล็ดซ้อน มุ้ง ESTATE 80x50CM ขาว 80x50CM.',
      //         subtitleunit: 'หน่วย PC~ชิ้น',
      //         requestnum: 'จำนวนขอโอน 5',
      //         allnum: 'จำนวนจัดได้',
      //       ),
      //       Gap(getProportionateScreenHeight(50)),
      //       LuffyButton(
      //         titleleft: 'ยกเลิก',
      //         titleright: 'ยืนยัน',
      //         pressleft: () => sendToBack(context: context),
      //         pressright: () =>
      //             sendToPage(context: context, routeName: '/MenuOnePageThird'),
      //       )
      //     ],
      //   ),
      // ),
    );
  }

  void updateStatusSearchItem(
      {required int index, required indexdetail, bool? status}) {
    print("Params == >${indexdetail}");
    final int _index = (widget.data[index]["head"]["detail"] as List)
        .indexWhere((element) => element["lineNumber"] == indexdetail);
    (widget.data[index]["head"]["detail"] as List).forEach((element) {
      print("Element ==> ${element["lineNumber"]}");
    });
    print("Find index ==> $_index");
    print("Header index ==> $index");
    if (_index != -1) {
      widget.data[index]["head"]["statusSearch"] = status ?? true;
      widget.data[index]["head"]["detail"][_index]["statusSearch"] =
          status ?? true;
    }
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
