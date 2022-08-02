import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wms_homeone/components/showproduct/showproduct_selest.dart';
import 'package:wms_homeone/page/menu_page.dart';
import 'package:wms_homeone/themeapp/themeapp_style.dart';
import 'package:wms_homeone/tranferform/request_treasury.dart';

import '../components/buttom/buttonrecord.dart';

class ShowSecondPage extends StatefulWidget {
  const ShowSecondPage({Key? key}) : super(key: key);

  @override
  State<ShowSecondPage> createState() => _ShowSecondPageState();
}

class _ShowSecondPageState extends State<ShowSecondPage> {
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
                MaterialPageRoute(builder: (context) => const RequestPage()),
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
              Icons.border_color_rounded,
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
                  Text('เลขที่เอกสารxxx01(RI)', style: Styles.textlableblack),
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
              Gap(10),
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
                          color: Styles.successColor,
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
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            color: Styles.witeColor,
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '5555',
                                hintStyle: Styles.textlableStyle,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Gap(20),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            color: Styles.witeColor,
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '5555',
                                hintStyle: Styles.textlableStyle,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(20),
                  Column(
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                color: Styles.mainColor,
                                height: 49,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Row(
                                          children: [
                                            Container(
                                              color: Styles.primaryColor,
                                              width: 100,
                                              height: 28,
                                              child: Center(
                                                child: Text(
                                                  'หมายเหตุ',
                                                  style: Styles
                                                      .textcontentblackStyle,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Icon(
                                        Icons.article_rounded,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(14),
                                bottomRight: Radius.circular(14),
                              ),
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                color: Styles.witeColor,
                                height: 100,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: '',
                                    hintStyle: GoogleFonts.kanit(fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
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
                  Gap(20),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'สแกน/ค้นหา บาร์โค้ด รหัส ชื่อสินค้า',
                        hintStyle: Styles.textlableStyle,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Gap(20),
                  Column(
                    children: List.generate(
                      5,
                      (index) => ProdutSelectNumber(),
                    ),
                  ),
                  Gap(20),
                  ButtonRecord(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
