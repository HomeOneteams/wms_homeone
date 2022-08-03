import 'package:flutter/material.dart';

import '../../../size_config/size_config.dart';
import '../../../themeapp/themeapp_style.dart';

class SoloEditProduct extends StatefulWidget {
  const SoloEditProduct(
      {Key? key,
      required this.title,
      required this.subtitle,
      this.icon,
      required this.subtitlenum})
      : super(key: key);
  final String title;
  final String subtitle;
  final String subtitlenum;
  final IconData? icon;
  @override
  State<SoloEditProduct> createState() => _SoloEditProductState();
}

class _SoloEditProductState extends State<SoloEditProduct> {
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
                  color: Styles.boxredColor,
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
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  color: Styles.witeColor,
                  height: 100,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: getProportionateScreenHeight(10)),
                    child: Column(
                      children: [
                        Text(widget.subtitle),
                        Text(widget.subtitlenum),
                      ],
                    ),
                  )),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(14),
                ),
                child: Container(
                  height: 49,
                  color: Styles.boxredColor,
                  child: Center(
                      child: Text(
                    'จำนวนจัดได้',
                    style: Styles.textcontentStyle,
                  )),
                ),
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(14),
                ),
                child: Container(
                  height: 49,
                  color: Styles.boxredColor,
                  child: Center(
                    child: TextField(
                      style: Styles.textcontentStyle,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: getProportionateScreenHeight(0),
                            horizontal: getProportionateScreenWidth(10)),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        border: InputBorder.none,
                        hintText: 'กรอกจำนวน',
                        hintStyle: Styles.textselectStyle,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
