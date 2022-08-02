import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../page/menu_page.dart';
import '../../tranferform/show_request_second.dart';

class ButtonAccept extends StatefulWidget {
  const ButtonAccept({Key? key}) : super(key: key);

  @override
  State<ButtonAccept> createState() => _ButtonAcceptState();
}

class _ButtonAcceptState extends State<ButtonAccept> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
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
                    style: GoogleFonts.kanit(fontSize: 15, color: Colors.black),
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
                    style: GoogleFonts.kanit(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
