import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../size_config/size_config.dart';
import '../../../../themeapp/themeapp_style.dart';

class SoloProduct extends StatefulWidget {
  const SoloProduct(
      {Key? key,
      required this.title,
      required this.subtitle,
      this.icon,
      required this.subtitleunit,
      required this.requestnum,
      required this.allnum})
      : super(key: key);
  final String title;
  final String subtitle;
  final String subtitleunit;
  final String requestnum;
  final String allnum;
  final IconData? icon;

  @override
  State<SoloProduct> createState() => _SoloProductState();
}

class _SoloProductState extends State<SoloProduct> {
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
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 28,
                            width: 100,
                            color: Styles.mapboxColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'ดูตำแหน่ง',
                                  style: Styles.textcontentStyle,
                                ),
                                const Icon(
                                  Icons.pin_drop_rounded,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
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
                  bottomLeft: Radius.circular(14),
                  bottomRight: Radius.circular(14),
                ),
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    color: Styles.witeColor,
                    height: 120,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: getProportionateScreenHeight(10)),
                      child: Column(
                        children: [
                          Text(widget.subtitle),
                          Gap(getProportionateScreenHeight(10)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(widget.subtitleunit),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(widget.requestnum),
                                  Text(widget.allnum)
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
