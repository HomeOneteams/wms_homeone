import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wms_homeone/size_config/size_config.dart';

import '../../../../themeapp/themeapp_style.dart';

class DropdownStatus extends StatefulWidget {
  const DropdownStatus({Key? key}) : super(key: key);

  @override
  State<DropdownStatus> createState() => _DropdownStatusState();
}

class _DropdownStatusState extends State<DropdownStatus> {
  String dropdownValue = 'สถานะ';

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
        items: ['สถานะ', 'PC~ชุด', 'ST~ชิ้น', 'ST~ชุด']
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
