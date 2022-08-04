import 'package:flutter/material.dart';
import 'package:wms_homeone/services/navigator.dart';

import 'luffy_menu.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      children: [
        LuffyMenu(
            title: "จัดสินค้าขอโอนสินค้า-ระหว่างคลัง (RI)",
            number: "1",
            subtitle: "อ้างอิง ใบขอโอน (RI) หรือ ใบรับสินค้า (RRV,RRN)",
            press: () => sendToPage(context: context, routeName: '/MenuOne')),
        LuffyMenu(
            title: "โอนสินค้า-ระหว่างคลัง (RL)",
            number: "2",
            icon: Icons.compare_arrows_rounded,
            press: () =>
                sendToPage(context: context, routeName: '/SunjiFirstPage')),
        LuffyMenu(
            title: "รับโอนสินค้าระหว่างสาขา-ปลายทาง (RLB)",
            number: "3",
            subtitle: "อ้างอิง ใบขอโอน (RI) หรือ ใบรับสินค้า (RRV,RRN)",
            press: () =>
                sendToPage(context: context, routeName: '/ShoperFirstPage')),
      ],
    );
  }
}
