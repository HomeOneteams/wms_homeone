import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../themeapp/themeapp_style.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(14),
                  topRight: Radius.circular(14),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  color: Styles.boxredColor,
                  height: 49,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Row(
                            children: [
                              Container(
                                color: Styles.witeColor,
                                width: 100,
                                height: 28,
                                child: Center(
                                  child: Text(
                                    '1085407',
                                    style: Styles.textcontentblackStyle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                       
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: double.infinity,
          color: Styles.witeColor,
          height: 140,
          child: Column(
            children: [
              Text(
                'หน้าต่างบานเกล็ดซ้อน มุ้ง ESTATE 80x50CM ขาว 80x50CM',
                style: Styles.textcontentblackStyle,
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'PC~ชุด',
                    style: Styles.textcontentblackStyle,
                  ),
                   Text(
                    'จำนวน',
                    style: Styles.textcontentblackStyle,
                  ),
                   Text(
                    '35',
                    style: Styles.textcontentblackStyle,
                  ),
                ],
              ),
             
            ],
          ),
        ),
        
        Gap(20),
      ],
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'เลือกหน่วยนับ';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      dropdownColor: Styles.boxredColor,
      value: dropdownValue,
      icon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.white,
      ),
      elevation: 16,
      style: Styles.textcontentStyle,
      underline: Container(
        height: 2,
        color: Colors.transparent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      isExpanded: true,
      items: ['เลือกหน่วยนับ', 'PC~ชุด', 'ST~ชิ้น', 'ST~ชุด']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Center(child: Text(value)),
        );
      }).toList(),
    );
  }
}
