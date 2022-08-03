import 'package:flutter/material.dart';
import 'package:wms_homeone/pages/munuone/components/dropdown/solo_status.dart';
import 'package:wms_homeone/size_config/size_config.dart';

import '../../../themeapp/themeapp_style.dart';

class SoloList extends StatefulWidget {
  const SoloList(
      {Key? key,
      this.press,
      required this.title,
      required this.number,
      this.subtitle,
      this.icon})
      : super(key: key);
  final String title;
  final String number;
  final String? subtitle;
  final IconData? icon;
  final Function()? press;

  @override
  State<SoloList> createState() => _SoloListState();
}

class _SoloListState extends State<SoloList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(20)),
      child: Column(
        children: [
          GestureDetector(
            onTap: widget.press,
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
                          color: Styles.mainColor,
                          height: 49,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: getProportionateScreenWidth(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Row(
                                    children: [
                                      Container(
                                        color: Styles.witeColor,
                                        width: 150,
                                        height: 28,
                                        child: Center(
                                          child: Text(
                                            widget.number,
                                            style: Styles.textcontentblackStyle,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(widget.title,
                                    style: Styles.textcontentStyle),
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
                          bottomLeft: Radius.circular(25),
                        ),
                        child: Container(
                          color: Styles.witeColor,
                          alignment: Alignment.center,
                          height: 49,
                          child: widget.subtitle == null
                              ? SizedBox.shrink()
                              : Text(widget.subtitle ?? '',
                                  style: Styles.textcontentblackStyle),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(25),
                        ),
                        child: Container(
                          color: Styles.witeColor,
                          alignment: Alignment.center,
                          height: 49,
                          child: DropdownStatus(),
                        ),
                      ),
                    ),
                  ],
                ),

                //block 2
              ],
            ),
          ),
        ],
      ),
    );
  }
}
