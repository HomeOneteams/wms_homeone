import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wms_homeone/pages/menu/components/luffy_menu.dart';
import 'package:wms_homeone/pages/menu/menu_page.dart';

import '../../themeapp/themeapp_style.dart';

class LuffyAlert extends StatefulWidget {
  const LuffyAlert(
      {Key? key,
      required this.titleleft,
      required this.titleright,
      this.pressleft,
      this.pressright,
      required this.titlealert,
      required this.subtitlalert})
      : super(key: key);
  final String titleleft;
  final String titleright;
  final String titlealert;
  final String subtitlalert;

  final Function()? pressleft;
  final Function()? pressright;

  @override
  State<LuffyAlert> createState() => _LuffyAlertState();
}

class _LuffyAlertState extends State<LuffyAlert> {
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
                    onPressed: () => showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            content: Builder(
                              builder: (context) {
                                var height = MediaQuery.of(context).size.height;
                                var width = MediaQuery.of(context).size.width;

                                return Container(
                                  height: height - 800,
                                  width: width - 60,
                                );
                              },
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  widget.titlealert,
                                  style: Styles.textcontentblackStyle,
                                  textAlign: TextAlign.center,
                                ),
                                Gap(20),
                                Gap(20),
                                Text(
                                  widget.subtitlalert,
                                  style: Styles.textcontentblackStyle,
                                )
                              ],
                            ),
                            actions: <Widget>[
                              Row(
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Container(
                                        color: Styles.mainColor,
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    MenuPage(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            'ปิด',
                                            style: Styles.textcontentStyle,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                    child: Text(
                      widget.titleright,
                      style: Styles.textcontentStyle,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
