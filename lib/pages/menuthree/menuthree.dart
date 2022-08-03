import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:wms_homeone/components/appbar/appbar.dart';
import 'package:wms_homeone/pages/menu/components/luffy_menu.dart';
import 'package:wms_homeone/size_config/size_config.dart';

import '../../services/navigator.dart';
import '../../themeapp/themeapp_style.dart';

class MenuThree extends StatefulWidget {
  const MenuThree({Key? key}) : super(key: key);

  @override
  State<MenuThree> createState() => _MenuThreeState();
}

class _MenuThreeState extends State<MenuThree> {
  var demoData = [
    {
      "head": {
        "isTest": false,
        "docDate": "2022-03-02 10:02:30",
        "DeliveryDate": "2021-03-1",
        "docFormat": "X00-RLA6406-0000",
        "InquiryType": 1,
        "VatType": 1,
        "CustCode": "144904",
        "branchCode": "X01",
        "departCode": "001",
        "creatorCode": "10862",
        "CreditDay": 45,
        "VatRate": 7.0,
        "TotalValue": 128112.25,
        "discountWord": "",
        "TotalDiscount": 0.0,
        "TotalVatValue": 8381.18,
        "TotalAmount": 128112.25,
        "Remark": "ทดอบ MIS API WMS",
        "TotalBeforeVat": 119731.07,
        "totalAfterVat": 128112.25,
        "taxDocNo": "123456789",
        "taxDocDate": "2022-03-02",
        "DocRef": "X01-POV6506-00002-001",
        "detail": [
          {
            "itemCode": "1025271",
            "itemName":
                "*** เหล็กข้ออ้อย SD40 25MMx10M โรงใหญ่ ตรง SKY นน.38.53กก.@19บ./กก.(รวมภาษีอีก7%)*35",
            "unitCode": "LN",
            "qty": 175.00,
            "price": 732.070,
            "discountWord": null,
            "discountAmount": 0.0,
            "SumAmount": 128112.25,
            "lineNumber": 0,
            "whCode": "X01",
            "shelfCode": "W2-Z03-2",
            "priceGuid": null,
            "priceExcludeVat": 684.18,
            "totalVatValue": 8381.18,
            "sumAmountExcludeVat": 119731.07,
            "RefDocNo": "X01-POV6502-00006",
            "RefDocDate": "2022-2-5",
            "RefRow": 0,
            "RefRemark":
                "สต้อกขายโครงการ ราคารวมภาษีอีก7%  เครดิต 60 วัน รับเองที่โรงงาน  X01-PR6401-00018 นน.6.7 ตัน"
          }
        ]
      }
    },
    {
      "head": {
        "isTest": false,
        "docDate": "2022-03-02 10:02:30",
        "DeliveryDate": "2021-03-1",
        "docFormat": "X00-RLA6406-0000",
        "InquiryType": 1,
        "VatType": 1,
        "CustCode": "144904",
        "branchCode": "X01",
        "departCode": "001",
        "creatorCode": "10862",
        "CreditDay": 45,
        "VatRate": 7.0,
        "TotalValue": 128112.25,
        "discountWord": "",
        "TotalDiscount": 0.0,
        "TotalVatValue": 8381.18,
        "TotalAmount": 128112.25,
        "Remark": "ทดอบ MIS API WMS",
        "TotalBeforeVat": 119731.07,
        "totalAfterVat": 128112.25,
        "taxDocNo": "123456789",
        "taxDocDate": "2022-03-02",
        "DocRef": "X01-POV6506-00002-001",
        "detail": [
          {
            "itemCode": "1025271",
            "itemName":
                "*** เหล็กข้ออ้อย SD40 25MMx10M โรงใหญ่ ตรง SKY นน.38.53กก.@19บ./กก.(รวมภาษีอีก7%)*35",
            "unitCode": "LN",
            "qty": 175.00,
            "price": 732.070,
            "discountWord": null,
            "discountAmount": 0.0,
            "SumAmount": 128112.25,
            "lineNumber": 0,
            "whCode": "X01",
            "shelfCode": "W2-Z03-2",
            "priceGuid": null,
            "priceExcludeVat": 684.18,
            "totalVatValue": 8381.18,
            "sumAmountExcludeVat": 119731.07,
            "RefDocNo": "X01-POV6502-00006",
            "RefDocDate": "2022-2-5",
            "RefRow": 0,
            "RefRemark":
                "สต้อกขายโครงการ ราคารวมภาษีอีก7%  เครดิต 60 วัน รับเองที่โรงงาน  X01-PR6401-00018 นน.6.7 ตัน"
          }
        ]
      }
    }
  ];

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
