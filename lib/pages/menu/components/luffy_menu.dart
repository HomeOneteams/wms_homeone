import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../size_config/size_config.dart';
import '../../../themeapp/themeapp_style.dart';

class LuffyMenu extends StatefulWidget {
  const LuffyMenu({
    Key? key,
    this.press,
    required this.title,
    required this.number,
    this.subtitle,
    this.width,
    this.icon,
    this.borderRadius,
    this.alignment,
    this.pressIcon,
    this.headColor,
    this.bottomHeight,
    this.bottomWidget,
    this.padding,
    this.mainAxisAlignment,
  }) : super(key: key);
  final String title;
  final String number;
  final String? subtitle;
  final IconData? icon;
  final Function()? press;
  final double? width;
  final double? borderRadius;
  final AlignmentGeometry? alignment;
  final Widget? pressIcon;
  final Color? headColor;
  final double? bottomHeight;
  final double? padding;
  final MainAxisAlignment? mainAxisAlignment;
  final Widget? bottomWidget;
  @override
  State<LuffyMenu> createState() => _LuffyMenuState();
}

class _LuffyMenuState extends State<LuffyMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(widget.padding ?? 20),
          vertical: getProportionateScreenHeight(20)),
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
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(widget.borderRadius ?? 25),
                          topRight: Radius.circular(widget.borderRadius ?? 25),
                        ),
                        child: Container(
                          color: widget.headColor ?? Styles.mainColor,
                          height: getProportionateScreenHeight(49),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: getProportionateScreenWidth(15)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Row(
                                    children: [
                                      Container(
                                        color: Styles.witeColor,
                                        padding: EdgeInsets.symmetric(
                                            horizontal:
                                                getProportionateScreenWidth(
                                                    widget.width ?? 10)),
                                        height: 28,
                                        child: Center(
                                          child: Text(
                                            widget.number,
                                            style: Styles.textNumberStyle,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Gap(getProportionateScreenHeight(5)),
                                Text(widget.title,
                                    style: Styles.textcontentStyle),
                                const Spacer(),
                                if (widget.icon != null)
                                  Icon(
                                    widget.icon,
                                    color: Colors.white,
                                  ),
                                if (widget.pressIcon != null)
                                  widget.pressIcon ?? const SizedBox()
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
                        borderRadius: BorderRadius.only(
                          bottomLeft:
                              Radius.circular(widget.borderRadius ?? 25),
                          bottomRight:
                              Radius.circular(widget.borderRadius ?? 25),
                        ),
                        child: Container(
                          color: Styles.witeColor,
                          alignment: widget.alignment ?? Alignment.center,
                          height: widget.bottomHeight ?? 49,
                          child: Column(
                            mainAxisAlignment: widget.mainAxisAlignment ??
                                MainAxisAlignment.center,
                            children: [
                              widget.subtitle == null
                                  ? Padding(
                                      padding: EdgeInsets.only(
                                          left: widget.alignment == null
                                              ? 0
                                              : 10),
                                      child: Text(widget.subtitle ?? '',
                                          style: Styles.textcontentblackStyle),
                                    )
                                  : const SizedBox.shrink(),
                              widget.bottomWidget ?? const SizedBox()
                            ],
                          ),
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
