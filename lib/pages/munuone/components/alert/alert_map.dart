import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wms_homeone/size_config/size_config.dart';
import 'package:wms_homeone/themeapp/themeapp_style.dart';

class AlertMap extends StatefulWidget {
  const AlertMap({Key? key}) : super(key: key);

  @override
  State<AlertMap> createState() => _AlertMapState();
}

class _AlertMapState extends State<AlertMap> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text(
            'ตำแหน่งสินค้า',
            textAlign: TextAlign.center,
          ),
          content: Row(
            children: [
              Text(
                'W1-Z05-1 พื้นที่รวม',
                style: Styles.textcontentblackStyle.copyWith(fontSize: 14),
              ),
              Gap(getProportionateScreenWidth(5)),
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  width: 30,
                  color: Styles.successColor,
                  child: const Icon(
                    Icons.compare_arrows_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              Gap(getProportionateScreenWidth(5)),
              Text('W1-Z05-1 พื้นที่รวม',
                  style: Styles.textcontentblackStyle.copyWith(fontSize: 14)),
            ],
          ),
          actions: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: double.infinity,
                color: Styles.boxredColor,
                child: TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: Text('ปิด', style: Styles.textcontentStyle),
                ),
              ),
            ),
          ],
        ),
      ),
      child: const Icon(
        Icons.location_on_rounded,
        color: Colors.white,
      ),
    );
  }
}
