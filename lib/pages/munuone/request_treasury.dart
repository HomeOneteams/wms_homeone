import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wms_homeone/pages/munuone/show_request_second.dart';

import 'package:wms_homeone/themeapp/themeapp_style.dart';

import '../menu/menu_page.dart';



class RequestPage extends StatefulWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ขอโอนสินค้า-ระหว่างคลัง (RI)',
          style: Styles.textcontentStyle,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MenuPage()),
              );
            },
            child: const Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
          ),
        ),
        backgroundColor: Styles.mainColor,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.add_circle_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'เลขที่เอกสารxxx01(RI)',
                    style: Styles.textlableblack,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 50,
                          color: Styles.mainColor,
                          child: Text(
                            'ซ่อน',
                            style: Styles.textlablewtie,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Gap(20),
                      Text(
                        '1/2',
                        style: Styles.textcontentblackStyle,
                      )
                    ],
                  ),
                ],
              ),
              Gap(20),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('ที่เก็บต้นทาง',
                          style: Styles.textcontentblackStyle),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 40,
                          color: HexColor('#37B218'),
                          child: const Icon(
                            Icons.compare_arrows_rounded,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text('ที่เก็บปลายทาง',
                          style: Styles.textcontentblackStyle),
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
              ),
              Gap(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'หมายเหตุ',
                    style: Styles.textcontentblackStyle,
                  ),
                  Gap(10),
                  Container(
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: ''),
                      ),
                    ),
                  ),
                ],
              ),
              Gap(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'เอกสารอ้างอิง',
                    style: Styles.textcontentblackStyle,
                  ),
                  Gap(10),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: ''),
                      ),
                    ),
                  ),
                ],
              ),
              Gap(150),
              Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(14),
                          bottomLeft: Radius.circular(14)),
                      child: Container(
                        height: 50,
                        color: Colors.white,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MenuPage(),
                              ),
                            );
                          },
                          child: Text(
                            'ยกเลิก',
                            style: GoogleFonts.kanit(
                                fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(14),
                          bottomRight: Radius.circular(14)),
                      child: Container(
                        height: 50,
                        color: HexColor('#244EB9'),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ShowSecondPage(),
                              ),
                            );
                          },
                          child: Text(
                            'ตกลง',
                            style: GoogleFonts.kanit(
                                fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyStatefulWidgetOrigin extends StatefulWidget {
  const MyStatefulWidgetOrigin({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidgetOrigin> createState() => _MyStatefulWidgetOriginState();
}

class _MyStatefulWidgetOriginState extends State<MyStatefulWidgetOrigin> {
  String dropdownValue = 'เลือกที่เก็บต้นทาง';

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
            'เลือกที่เก็บต้นทาง',
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
