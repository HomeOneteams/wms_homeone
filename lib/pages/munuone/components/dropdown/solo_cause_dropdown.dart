import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wms_homeone/size_config/size_config.dart';

import '../../../../themeapp/themeapp_style.dart';

class DropdownCause extends StatefulWidget {
  const DropdownCause({Key? key}) : super(key: key);

  @override
  State<DropdownCause> createState() => _DropdownCauseState();
}

class _DropdownCauseState extends State<DropdownCause> {
  String dropdownValue = 'เลือกสาเหตุที่จัดได้ไม่ครบ';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: DropdownButton<String>(
        dropdownColor: Styles.witeColor,
        value: dropdownValue,
        icon: const Icon(
          Icons.arrow_drop_down,
          color: Colors.black,
        ),
        elevation: 16,
        style: Styles.textcontentblackStyle,
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
        items: ['เลือกสาเหตุที่จัดได้ไม่ครบ', 'PC~ชุด', 'ST~ชิ้น', 'ST~ชุด']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Center(child: Text(value)),
          );
        }).toList(),
      ),
    );
  }
}
