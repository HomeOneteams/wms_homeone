import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../pages/munuone/request_treasury.dart';
import '../../pages/munuone/showall_request_form.dart';

class LuffyButton extends StatefulWidget {
  const LuffyButton(
      {Key? key,
      required this.titleleft,
      required this.titleright,
      this.pressleft,
      this.pressright})
      : super(key: key);
  final String titleleft;
  final String titleright;

  final Function()? pressleft;
  final Function()? pressright;

  @override
  State<LuffyButton> createState() => _LuffyButtonState();
}

class _LuffyButtonState extends State<LuffyButton> {
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
                  onPressed: widget.pressleft,
                  child: Text(
                    widget.titleleft,
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
                  onPressed: widget.pressright,
                  child: Text(
                    widget.titleright,
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
