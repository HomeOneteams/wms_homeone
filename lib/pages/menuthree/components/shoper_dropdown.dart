import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../themeapp/themeapp_style.dart';
import '../../munuone/request_treasury.dart';

class ShoperDropdown extends StatefulWidget {
  const ShoperDropdown({Key? key}) : super(key: key);

  @override
  State<ShoperDropdown> createState() => _ShoperDropdownState();
}

class _ShoperDropdownState extends State<ShoperDropdown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('คลังปลายทาง', style: Styles.textcontentblackStyle),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 40,
                color: Styles.successColor,
                child: const Icon(
                  Icons.compare_arrows_rounded,
                  size: 15,
                  color: Colors.white,
                ),
              ),
            ),
            Text('ที่เก็บปลายทาง', style: Styles.textcontentblackStyle),
          ],
        ),
        const Gap(10),
        Row(
          children: const [
            Expanded(child: MyStatefulWidgetOrigin()),
            Gap(10),
            Expanded(child: MyStatefulWidgetDestination()),
          ],
        ),
      ],
    );
  }
}

class MyStatefulWidgetOrigin extends StatefulWidget {
  const MyStatefulWidgetOrigin({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidgetOrigin> createState() => _MyStatefulWidgetOriginState();
}

class _MyStatefulWidgetOriginState extends State<MyStatefulWidgetOrigin> {
  String dropdownValue = 'เลือกคลังปลายทาง';

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 34,
        color: Colors.white,
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
          ),
          elevation: 16,
          style: Styles.textlableStyle,
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
          items: [
            'เลือกคลังปลายทาง',
            'เลือกที่เก็บต้นทาง1',
            'เลือกที่เก็บต้นทาง2',
            'เลือกที่เก็บต้นทาง3'
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class MyStatefulWidgetDestination extends StatefulWidget {
  const MyStatefulWidgetDestination({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidgetDestination> createState() =>
      _MyStatefulWidgetDestinationState();
}

class _MyStatefulWidgetDestinationState
    extends State<MyStatefulWidgetDestination> {
  String dropdownValue = 'เลือกที่เก็บปลายทาง';

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 34,
        color: Colors.white,
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
          ),
          elevation: 16,
          style: Styles.textlableStyle,
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
          items: [
            'เลือกที่เก็บปลายทาง',
            'เลือกที่เก็บปลายทาง1',
            'เลือกที่เก็บปลายทาง2',
            'เลือกที่เก็บปลายทาง3'
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
