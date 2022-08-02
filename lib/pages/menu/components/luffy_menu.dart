import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wms_homeone/services/navigator.dart';

import '../../../size_config/size_config.dart';
import '../../../themeapp/themeapp_style.dart';

class LuffyMenu extends StatefulWidget {
  const LuffyMenu({Key? key, this.press, required this.title, required this.number, this.subtitle, this.icon}) : super(key: key);
    final String  title;
  final String  number;
  final String ? subtitle;
  final IconData ? icon;
  final Function()? press;
  @override
  State<LuffyMenu> createState() => _LuffyMenuState();
}

class _LuffyMenuState extends State<LuffyMenu> {
  @override
  Widget build(BuildContext context) {
     return Padding(
      padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),vertical: getProportionateScreenHeight(20)),
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
                            padding:  EdgeInsets.only(left: 0),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Row(
                                    children: [
                                      Container(
                                        color: Styles.primaryColor,
                                        width: 59,
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
                                Text(widget.title,
                                    style: Styles.textcontentStyle),
                              if(widget.icon !=null)
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
                          bottomRight: Radius.circular(25),
                        ),
                        child: Container(
                          color: Styles.witeColor,
                          alignment: Alignment.center,
                          height: 49,
                          child: widget.subtitle == null ?SizedBox.shrink():Text(widget.subtitle??'',
                                    style: Styles.textlableStyle),
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


