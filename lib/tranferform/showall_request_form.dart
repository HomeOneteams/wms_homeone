import 'package:flutter/material.dart';
import 'package:wms_homeone/tranferform/request_treasury.dart';

import '../themeapp/themeapp_style.dart';

class ShowAllForm extends StatefulWidget {
  const ShowAllForm({Key? key}) : super(key: key);

  @override
  State<ShowAllForm> createState() => _ShowAllFormState();
}

class _ShowAllFormState extends State<ShowAllForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ขอโอนสินค้า-ระหว่างคลัง (RI)',
          style: Styles.textcontentStyle,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RequestPage()),
              );
            },
            child: const Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
          ),
        ),
        backgroundColor: Styles.mainColor,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(),
            ],
          ),
        ],
      ),
    );
  }
}
