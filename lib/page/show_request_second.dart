import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wms_homeone/page/menu_page.dart';

class ShowSecondPage extends StatefulWidget {
  const ShowSecondPage({Key? key}) : super(key: key);

  @override
  State<ShowSecondPage> createState() => _ShowSecondPageState();
}

class _ShowSecondPageState extends State<ShowSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#DADADA"),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ขอโอนสินค้า-ระหว่างคลัง (RI)',
          style: GoogleFonts.kanit(fontSize: 15),
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
        backgroundColor: HexColor("#244EB9"),
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
                  Text('เลขที่เอกสารxxx01(RI)',
                      style: GoogleFonts.kanit(fontSize: 12)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 50,
                          color: HexColor('#244EB9'),
                          child: Text(
                            'ซ่อน',
                            style: GoogleFonts.kanit(
                                fontSize: 12, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Gap(20),
                      Text(
                        '1/2',
                        style: GoogleFonts.kanit(fontSize: 15),
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('ที่เก็บต้นทาง',
                          style: GoogleFonts.kanit(fontSize: 15)),
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
                          style: GoogleFonts.kanit(fontSize: 15)),
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
                            color: Colors.white,
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '5555',
                                hintStyle: TextStyle(
                                    fontSize: 12, color: HexColor('#9F9B9B')),
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
                            color: Colors.white,
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '5555',
                                hintStyle: TextStyle(
                                    fontSize: 12, color: HexColor('#9F9B9B')),
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
                                color: HexColor('#244EB9'),
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
                                              color: HexColor("#D9D9D9"),
                                              width: 100,
                                              height: 28,
                                              child: Center(
                                                child: Text(
                                                  'หมายเหตุ',
                                                  style: GoogleFonts.kanit(
                                                      fontSize: 15,
                                                      color: Colors.black),
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
                                color: Colors.white,
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
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
