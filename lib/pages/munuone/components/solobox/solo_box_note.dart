import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wms_homeone/size_config/size_config.dart';

import '../../../../themeapp/themeapp_style.dart';

class SoloBox extends StatefulWidget {
  const SoloBox(
      {Key? key, required this.title, required this.subtitle, this.icon})
      : super(key: key);
  final String title;
  final String subtitle;
  final IconData? icon;

  @override
  State<SoloBox> createState() => _SoloBoxState();
}

class _SoloBoxState extends State<SoloBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  color: Styles.mainColor,
                  height: 49,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Row(
                            children: [
                              Container(
                                color: Styles.witeColor,
                                width: 100,
                                height: 28,
                                child: Center(
                                  child: Text(
                                    widget.title,
                                    style: Styles.textcontentblackStyle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (widget.icon != null)
                          Icon(
                            widget.icon,
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
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    color: Styles.witeColor,
                    height: 49,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: getProportionateScreenHeight(10)),
                      child: Text(widget.subtitle),
                    )),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
