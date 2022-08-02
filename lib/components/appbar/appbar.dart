import 'package:flutter/material.dart';

import '../../themeapp/themeapp_style.dart';

class LuffyAppBar extends StatefulWidget implements PreferredSizeWidget {
    LuffyAppBar({Key? key, this.actions, this.icon, required this.title, this.centerTitle}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

    @override
    final Size preferredSize; // default is 56.0
    final List<Widget>? actions;
    final Widget? icon;
    final String title;
    final bool? centerTitle;
    @override
    _LuffyAppBarState createState() => _LuffyAppBarState();
}

class _LuffyAppBarState extends State<LuffyAppBar>{

    @override
    Widget build(BuildContext context) {
        return AppBar( 
          centerTitle: widget.centerTitle??true,
          backgroundColor: Styles.mainColor,
          leading: widget.icon ?? const SizedBox()
            ,
          actions:widget.actions??[],
          title: Text(widget.title,style: Styles.textcontentStyle,) );
    }
}