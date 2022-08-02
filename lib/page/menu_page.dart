import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wms_homeone/page/request_treasury.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#DADADA"),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'โอนสินค้า',
          style: GoogleFonts.kanit(fontSize: 15),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        backgroundColor: HexColor("#244EB9"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const Gap(30),
          Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RequestPage()),
                  );
                },
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                            ),
                            child: Container(
                              color: HexColor('#244EB9'),
                              height: 49,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Row(
                                        children: [
                                          Container(
                                            color: HexColor("#D9D9D9"),
                                            width: 59,
                                            height: 28,
                                            child: Center(
                                              child: Text(
                                                '1',
                                                style: GoogleFonts.kanit(
                                                    fontSize: 15,
                                                    color: HexColor('#244EB9')),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'ขอโอนสินค้า-ระหว่างคลัง (RI)',
                                      style: GoogleFonts.kanit(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                    const Icon(
                                      Icons.compare_arrows_rounded,
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
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                            ),
                            child: Container(
                              color: Colors.white,
                              height: 49,
                            ),
                          ),
                        ),
                      ],
                    ),

                    //block 2
                  ],
                ),
              ),
              Column(
                children: [
                  const Gap(30),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                          child: Container(
                            color: HexColor('#244EB9'),
                            height: 49,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Row(
                                      children: [
                                        Container(
                                          color: HexColor("#D9D9D9"),
                                          width: 59,
                                          height: 28,
                                          child: Center(
                                            child: Text(
                                              '2',
                                              style: GoogleFonts.kanit(
                                                  fontSize: 15,
                                                  color: HexColor('#244EB9')),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'จัดสินค้าขอโอนสินค้า-ระหว่างคลัง (RI)',
                                    style: GoogleFonts.kanit(
                                        fontSize: 15, color: Colors.white),
                                  ),
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
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                          child: Container(
                            color: Colors.white,
                            height: 49,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'อ้างอิง ใบขอโอน (RI) หรือ ใบรับสินค้า (RRV,RRN)',
                                  style: GoogleFonts.kanit(
                                      fontSize: 12, color: HexColor('#9F9B9B')),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  //block 3

                  const Gap(30),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                          child: Container(
                            color: HexColor('#244EB9'),
                            height: 49,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Row(
                                      children: [
                                        Container(
                                          color: HexColor("#D9D9D9"),
                                          width: 59,
                                          height: 28,
                                          child: Center(
                                            child: Text(
                                              '3',
                                              style: GoogleFonts.kanit(
                                                  fontSize: 15,
                                                  color: HexColor('#244EB9')),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'โอนสินค้า-ระหว่างคลัง (RL)',
                                    style: GoogleFonts.kanit(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  const Icon(
                                    Icons.compare_arrows_rounded,
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
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                          child: Container(
                            color: Colors.white,
                            height: 49,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  //block 4
                  const Gap(30),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                          child: Container(
                            color: HexColor('#244EB9'),
                            height: 49,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Row(
                                      children: [
                                        Container(
                                          color: HexColor("#D9D9D9"),
                                          width: 59,
                                          height: 28,
                                          child: Center(
                                            child: Text(
                                              '4',
                                              style: GoogleFonts.kanit(
                                                  fontSize: 15,
                                                  color: HexColor('#244EB9')),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'รับโอนสินค้าระหว่างสาขา-ปลายทาง (RLB)',
                                    style: GoogleFonts.kanit(
                                        fontSize: 15, color: Colors.white),
                                  ),
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
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                          child: Container(
                            color: Colors.white,
                            height: 49,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'อ้างอิง ใบขอโอน (RI) หรือ ใบรับสินค้า (RRV,RRN)',
                                  style: GoogleFonts.kanit(
                                      fontSize: 12, color: HexColor('#9F9B9B')),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
