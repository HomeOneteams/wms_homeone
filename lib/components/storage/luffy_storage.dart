import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wms_homeone/size_config/size_config.dart';

import '../../themeapp/themeapp_style.dart';

class LuffyStorage extends StatefulWidget {
  const LuffyStorage(
      {Key? key, required this.titleorigin, required this.titledestination})
      : super(key: key);
  final String titleorigin;
  final String titledestination;

  @override
  State<LuffyStorage> createState() => _LuffyStorageState();
}

class _LuffyStorageState extends State<LuffyStorage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('ที่เก็บต้นทาง', style: Styles.textcontentblackStyle),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 40,
                  color: Styles.successColor,
                  child: const Icon(
                    Icons.compare_arrows_rounded,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              Text('ที่เก็บปลายทาง', style: Styles.textcontentblackStyle),
            ],
          ),
          const Gap(10),
          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Styles.witeColor,
                    child: TextField(
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
                        hintText: widget.titleorigin,
                        hintStyle: Styles.textlableStyle,
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
                    color: Styles.witeColor,
                    child: TextField(
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
                        hintText: widget.titledestination,
                        hintStyle: Styles.textlableStyle,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
