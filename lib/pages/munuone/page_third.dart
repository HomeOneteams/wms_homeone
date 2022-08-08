import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wms_homeone/components/button/luffy_button.dart';
import 'package:wms_homeone/pages/menu/components/luffy_menu.dart';
import 'package:wms_homeone/pages/munuone/components/cause/solo_cause.dart';
import 'package:wms_homeone/pages/munuone/components/dropdown/solo_cause_dropdown.dart';
import 'package:wms_homeone/pages/munuone/components/product_edit_num.dart';
import 'package:wms_homeone/pages/munuone/components/solobox/solo_box_note.dart';
import 'package:wms_homeone/size_config/size_config.dart';

import '../../components/appbar/appbar.dart';
import '../../components/button/luffy_button_alert.dart';
import '../../components/input_feild.dart';
import '../../services/navigator.dart';
import '../../themeapp/themeapp_style.dart';

class MenuOnePageThird extends StatefulWidget {
  const MenuOnePageThird({Key? key, required this.data, required this.index})
      : super(key: key);
  final List<dynamic> data;
  final int index;

  @override
  State<MenuOnePageThird> createState() => _MenuOnePageThirdState();
}

class _MenuOnePageThirdState extends State<MenuOnePageThird> {
  late List<TextEditingController> controller = [];
  late List<TextEditingController> remark = [];
  @override
  void initState() {
    // TODO: implement initState
    List.generate(
        widget.data[widget.index]["head"]["detail"].length,
        (index) => {
              controller.add(TextEditingController(
                  text: widget.data[widget.index]["head"]["detail"][index]
                          ["eventQty"]
                      .toString())),
              remark.add(TextEditingController(text: ""))
            });
    super.initState();
    print(widget.data[widget.index]["head"]["detail"].length);
  }

  @override
  Widget build(BuildContext context) {
    var data = widget.data;
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, 'error');
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Styles.primaryColor,
        appBar: LuffyAppBar(
            icon: GestureDetector(
              child: const Icon(Icons.arrow_back_ios_rounded),
              onTap: () => Navigator.pop(context, 'error'),
            ),
            title: "จัดสินค้าขอโอนสินค้า-ระหว่างคลัง (PP-RI)"),
        body: Padding(
            padding: EdgeInsets.all(getProportionateScreenHeight(20)),
            child: Stack(
              children: [
                ListView(children: [
                  Gap(getProportionateScreenHeight(20)),
                  ...List.generate((data).length, (indexHead) {
                    var _list = data[indexHead];
                    return _list['head']["statusSearch"]
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Gap(getProportionateScreenHeight(20)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${_list['head']['docFormat']}',
                                    style: Styles.textcontentblackStyle,
                                  ),
                                  // GestureDetector(
                                  //   onTap: () {
                                  //     _list['head']['isTest'] =
                                  //         !_list['head']['isTest'];
                                  //     setState(() {});
                                  //   },
                                  //   child: ClipRRect(
                                  //     borderRadius: BorderRadius.circular(10),
                                  //     child: Container(
                                  //       padding: const EdgeInsets.symmetric(
                                  //           horizontal: 10, vertical: 3),
                                  //       color: Styles.mainColor,
                                  //       child: Text(
                                  //         "${_list['head']['isTest'] ? "hide" : "show"}",
                                  //         style: Styles.textcontentStyle
                                  //             .copyWith(fontSize: 14),
                                  //       ),
                                  //     ),
                                  //   ),
                                  // )
                                ],
                              ),
                              Gap(getProportionateScreenHeight(20)),
                              if (_list['head']['isTest']) ...[
                                ...List.generate(
                                    (_list['head']['detail'] as List).length,
                                    (index) {
                                  var detail = _list['head']['detail'][index];
                                  return detail["statusSearch"]
                                      ? Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            LuffyMenu(
                                              padding: 0,
                                              title: '',
                                              number: '${detail['itemCode']}',
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              bottomWidget: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: const [
                                                      Expanded(
                                                        child: Text(
                                                          'หน้าต่างบานเกล็ดซ้อน มุ้ง ESTATE 80x50CM ',
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Gap(getProportionateScreenHeight(
                                                      10)),
                                                  Column(
                                                    children: [
                                                      LuffySendTo(
                                                          start:
                                                              'ที่เก็บต้นทาง',
                                                          finals:
                                                              'ที่เก็บปลายทาง',
                                                          color: Styles
                                                              .successColor),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                            child:
                                                                SoLoInputFeild(
                                                              borderRadius: 10,
                                                              verticalPadding:
                                                                  10,
                                                              fillColor: Styles
                                                                  .witeColor,
                                                              hintText:
                                                                  "${_list['head']['branchCode']}",
                                                              prefixIconData:
                                                                  Icons.search,
                                                              accentColor:
                                                                  Colors.indigo,
                                                            ),
                                                          ),
                                                          Gap(getProportionateScreenHeight(
                                                              20)),
                                                          Expanded(
                                                            child:
                                                                SoLoInputFeild(
                                                              borderRadius: 10,
                                                              verticalPadding:
                                                                  10,
                                                              fillColor: Styles
                                                                  .witeColor,
                                                              hintText:
                                                                  "${_list['head']['branchCode']}",
                                                              prefixIconData:
                                                                  Icons.search,
                                                              accentColor:
                                                                  Colors.indigo,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    getProportionateScreenWidth(
                                                                        10)),
                                                        child: Row(
                                                          children: const [
                                                            Expanded(
                                                                child: Text(
                                                                    'หน่วย      PC~ชิ้น')),
                                                            Expanded(
                                                                child: Text(
                                                              'หน่วย      PC~ชิ้น',
                                                              textAlign:
                                                                  TextAlign.end,
                                                            )),
                                                          ],
                                                        ),
                                                      ),
                                                      // Gap(getProportionateScreenHeight(13)),

                                                      Container(
                                                        color:
                                                            Styles.boxredColor,
                                                        child: Row(
                                                          children: [
                                                            Expanded(
                                                                child: Container(
                                                                    child: Center(
                                                                        child: Text(
                                                                      "จำนวนจัดได้",
                                                                      style: Styles
                                                                          .textcontentStyle,
                                                                    )),
                                                                    color: Styles.boxredColor,
                                                                    height: 49)),
                                                            Expanded(
                                                                child:
                                                                    Container(
                                                              color: Styles
                                                                  .boxredColor,
                                                              child:
                                                                  SoLoInputFeild(
                                                                onSubmitted:
                                                                    (p0) {
                                                                  (widget.data[widget.index]["head"]
                                                                              [
                                                                              "detail"]
                                                                          as List)
                                                                      .asMap()
                                                                      .forEach((key,
                                                                          element) {
                                                                    if (widget.data[widget.index]["head"]["detail"]
                                                                            [
                                                                            key]
                                                                        [
                                                                        "statusSearch"]) {
                                                                      updateStatusSearchItem(
                                                                          index: widget
                                                                              .index,
                                                                          indexdetail:
                                                                              key,
                                                                          eventQty:
                                                                              double.parse(controller[key].text));
                                                                    }
                                                                  });
                                                                  setState(
                                                                      () {});
                                                                },
                                                                textInputType:
                                                                    TextInputType
                                                                        .number,
                                                                textEditingController:
                                                                    controller[
                                                                        index],
                                                                hintText:
                                                                    controller[
                                                                            index]
                                                                        .text,
                                                                borderRadius:
                                                                    14,
                                                                verticalPadding:
                                                                    15,
                                                              ),
                                                            )),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                              icon: Icons.article_rounded,
                                              headColor: Styles.boxredColor,
                                              bottomHeight: 200,
                                            ),
                                            if (double.parse(detail["eventQty"]
                                                        .toString()) <
                                                    double.parse(detail["qty"]
                                                        .toString()) &&
                                                (double.parse(detail["eventQty"]
                                                        .toString()) >=
                                                    0)) ...[
                                              LuffyMenu(
                                                bottomWidget: DropdownCause(),
                                                padding: 0,
                                                title: "",
                                                number: "สาเหตุที่จัดได้ไม่ครบ",
                                              ),
                                              LuffyMenu(
                                                bottomHeight: 100,
                                                padding: 0,
                                                title: "",
                                                number: "หมายเหตุ",
                                                bottomWidget: SoLoInputFeild(
                                                  hintText: "หมายเหตุ",
                                                  textEditingController:
                                                      remark[index],
                                                ),
                                              ),
                                            ]
                                          ],
                                        )
                                      : SizedBox();
                                }),
                              ],
                            ],
                          )
                        : SizedBox.shrink();
                  }),
                  Gap(getProportionateScreenHeight(50)),
                ]),
                if (data.isNotEmpty)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      LuffyButton(
                        titleleft: 'ยกเลิก',
                        pressleft: () => sendToBack(context: context),
                        pressright: () {
                          Navigator.pop(context, 'success');
                        },
                        titleright: 'ยืนยัน',
                      ),
                    ],
                  )
              ],
            )),
      ),
    );
  }

  void updateStatusSearchItem(
      {required int index,
      required indexdetail,
      bool? status,
      required double eventQty}) {
    if (eventQty < 0) {
      print("กรุณากรอกจำนวนมากกว่าหรือเท่ากับ 0");
    } else if (eventQty >
        double.parse(widget.data[index]["head"]["detail"][indexdetail]["qty"]
            .toString())) {
      widget.data[widget.index]["head"]["statusSuccess"] = status ?? true;
      widget.data[widget.index]["head"]["detail"][indexdetail]["eventQty"] =
          eventQty;
      widget.data[widget.index]["head"]["detail"][indexdetail]
          ["statusSuccess"] = true;
      print("คุณกรอกจำนวนเกินจำนวนขอโอน");
    } else {
      widget.data[widget.index]["head"]["statusSuccess"] = status ?? true;
      widget.data[widget.index]["head"]["detail"][indexdetail]["eventQty"] =
          eventQty;
      widget.data[widget.index]["head"]["detail"][indexdetail]
          ["statusSuccess"] = true;
      print(widget.data[widget.index]["head"]["detail"][indexdetail]["eventQty"]
          .toString());
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
