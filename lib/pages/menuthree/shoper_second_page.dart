import 'package:flutter/material.dart';

import '../../components/appbar/appbar.dart';
import '../../services/navigator.dart';
import '../../themeapp/themeapp_style.dart';

class ShoperSecondPage extends StatefulWidget {
  const ShoperSecondPage({Key? key}) : super(key: key);

  @override
  State<ShoperSecondPage> createState() => _ShoperSecondPageState();
}

class _ShoperSecondPageState extends State<ShoperSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      appBar: LuffyAppBar(
          icon: GestureDetector(
            child: const Icon(Icons.arrow_back_ios_rounded),
            onTap: () => sendToBack(context: context),
          ),
          title: "รับโอนสินค้าระหว่างสาขา-ปลายทาง (RLB)"),
    );
  }
}
