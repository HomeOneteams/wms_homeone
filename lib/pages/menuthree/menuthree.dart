import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:wms_homeone/components/appbar/appbar.dart';
import 'package:wms_homeone/pages/menu/components/luffy_menu.dart';
import 'package:wms_homeone/size_config/size_config.dart';

import '../../data.dart';
import '../../services/navigator.dart';
import '../../themeapp/themeapp_style.dart';

class MenuThree extends StatefulWidget {
  const MenuThree({Key? key}) : super(key: key);

  @override
  State<MenuThree> createState() => _MenuThreeState();
}

class _MenuThreeState extends State<MenuThree> {
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
      body: ListView(
        children: [
          const Gap(20),
          ...List.generate(
              (demoData as List).length,
              (index) => Column(
                    children: [
                      LuffyMenu(
                        title: "",
                        number: "ใบโอนสินค้าระหว่างสาขา",
                        borderRadius: 15,
                        subtitle:
                            "${demoData[index]["head"]!["docFormat"] ?? ''}$index",
                        alignment: Alignment.centerLeft,
                        // icon: Icons.document_scanner_rounded,
                        pressIcon: GestureDetector(
                          onTap: (() {
                            demoData[index]["head"]!["isTest"] =
                                !((demoData[index]["head"]!["isTest"]) as bool);
                            setState(() {});
                          }),
                          child: ((demoData[index]["head"]!["isTest"]) as bool)
                              ? Icon(Icons.panorama_fish_eye_rounded,
                                  color: Styles.witeColor)
                              : Icon(Icons.remove_red_eye_rounded,
                                  color: Styles.witeColor),
                        ),
                      ),
                      LuffyMenu(
                        title: "",
                        number: "หมายเหตุ",
                        borderRadius: 15,
                        subtitle:
                            "${demoData[index]["head"]!["Remark"] ?? ''}$index",
                        alignment: Alignment.centerLeft,
                        // icon: Icons.document_scanner_rounded,
                        pressIcon: GestureDetector(
                          onTap: (() {
                            demoData[index]["head"]!["isTest"] =
                                !((demoData[index]["head"]!["isTest"]) as bool);
                            setState(() {});
                          }),
                          child:
                              Icon(Icons.dock_rounded, color: Styles.witeColor),
                        ),
                      ),
                      ...List.generate(
                          (demoData[index]["head"]!["detail"] as List).length,
                          (index2) {
                        var _list = (demoData[index]["head"]!["detail"]
                            as List)[index2]!;
                        return Column(
                          children: [
                            LuffyMenu(
                              bottomWidget: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        getProportionateScreenHeight(10)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Gap(10),
                                    Row(
                                      children: [
                                        Expanded(
                                            child: Text(
                                          "หน่วย  ${_list["unitCode"]}",
                                          style: Styles.textlableStyle.copyWith(
                                              color: Styles.blackColor),
                                        )),
                                        Expanded(
                                            child: Text(
                                          "จำนวนโอน  ${_list["qty"]}",
                                          textAlign: TextAlign.end,
                                          style: Styles.textlableStyle.copyWith(
                                              color: Styles.blackColor),
                                        ))
                                      ],
                                    ),
                                    Gap(10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: SizedBox(),
                                        ),
                                        Expanded(
                                            child: Text(
                                          "จำนวนรับโอน  ${_list["qty"]}",
                                          textAlign: TextAlign.end,
                                          style: Styles.textlableStyle.copyWith(
                                              color: Styles.blackColor),
                                        ))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              bottomHeight: 120,
                              borderRadius: 14,
                              title: "",
                              number: _list["itemCode"],
                              headColor: Styles.boxredColor,
                              alignment: Alignment.center,
                              subtitle: _list["itemName"],
                            ),
                            Gap(10),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: getProportionateScreenWidth(20)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(14),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: getProportionateScreenHeight(120),
                                  width: double.infinity,
                                  color: Styles.witeColor,
                                  child: Text(
                                    "อัพโหลดรูปภาพ",
                                    style: Styles.textlableStyle,
                                  ),
                                ),
                              ),
                            )
                          ],
                        );
                      })
                    ],
                  ))
        ],
      ),
    );
  }
}
