import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../size_config/size_config.dart';
import '../../../themeapp/themeapp_style.dart';
import '../../menu/menu_page.dart';

class SunjiDelete extends StatefulWidget {
  const SunjiDelete({
    Key? key,
    required this.titleedite,
    required this.subtitleedit,
    required this.title,
    required this.subtitle,
    required this.subtitleunit,
    required this.requestnum,
    required this.allnum,
    required this.titledelete,
    required this.subtitledelete,
  }) : super(key: key);
  final String titleedite;
  final String subtitleedit;
  final String title;
  final String subtitle;
  final String subtitleunit;
  final String requestnum;
  final String allnum;
  final String titledelete;
  final String subtitledelete;

  @override
  State<SunjiDelete> createState() => _SunjiDeleteState();
}

class _SunjiDeleteState extends State<SunjiDelete> {
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
                        Row(
                          children: [
                            SizedBox(
                              width: 30,
                              child: TextButton(
                                onPressed: () => showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    content: Builder(
                                      builder: (context) {
                                        var height =
                                            MediaQuery.of(context).size.height;
                                        var width =
                                            MediaQuery.of(context).size.width;

                                        return SizedBox(
                                          height: height - 800,
                                          width: width - 60,
                                        );
                                      },
                                    ),
                                    title: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          widget.titleedite,
                                          style: Styles.textcontentblackStyle,
                                          textAlign: TextAlign.center,
                                        ),
                                        Gap(20),
                                        Gap(20),
                                        Text(
                                          widget.subtitleedit,
                                          style: Styles.textcontentblackStyle,
                                        )
                                      ],
                                    ),
                                    actions: <Widget>[
                                      Row(
                                        children: [
                                          Expanded(
                                            child: ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(14),
                                                      bottomLeft:
                                                          Radius.circular(14)),
                                              child: Container(
                                                color: Styles.primaryColor,
                                                child: TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          context, 'Cancel'),
                                                  child: Text(
                                                    'ยกเลิก',
                                                    style: Styles
                                                        .textcontentblackStyle,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topRight:
                                                          Radius.circular(14),
                                                      bottomRight:
                                                          Radius.circular(14)),
                                              child: Container(
                                                color: Styles.mainColor,
                                                child: TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          context, 'OK'),
                                                  child: Text(
                                                    'ตกลง',
                                                    style:
                                                        Styles.textcontentStyle,
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
                                child: const Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                              child: TextButton(
                                onPressed: () => showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    content: Builder(
                                      builder: (context) {
                                        var height =
                                            MediaQuery.of(context).size.height;
                                        var width =
                                            MediaQuery.of(context).size.width;

                                        return SizedBox(
                                          height: height - 800,
                                          width: width - 60,
                                        );
                                      },
                                    ),
                                    title: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          widget.titledelete,
                                          style: Styles.textcontentblackStyle,
                                          textAlign: TextAlign.center,
                                        ),
                                        Gap(getProportionateScreenHeight(20)),
                                        Text(
                                          widget.subtitledelete,
                                          style: Styles.textcontentblackStyle,
                                        )
                                      ],
                                    ),
                                    actions: <Widget>[
                                      Row(
                                        children: [
                                          Expanded(
                                            child: ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(14),
                                                      bottomLeft:
                                                          Radius.circular(14)),
                                              child: Container(
                                                color: Styles.primaryColor,
                                                child: TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          context, 'Cancel'),
                                                  child: Text(
                                                    'ยกเลิก',
                                                    style: Styles
                                                        .textcontentblackStyle,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topRight:
                                                          Radius.circular(14),
                                                      bottomRight:
                                                          Radius.circular(14)),
                                              child: Container(
                                                color: Styles.mainColor,
                                                child: TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          context, 'OK'),
                                                  child: Text(
                                                    'ตกลง',
                                                    style:
                                                        Styles.textcontentStyle,
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
                                child: const Icon(
                                  Icons.delete_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
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
