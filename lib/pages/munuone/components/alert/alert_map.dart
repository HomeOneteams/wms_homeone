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
          content: Builder(
            builder: (context) {
              var height = MediaQuery.of(context).size.height;
              var width = MediaQuery.of(context).size.width;

              return SizedBox(
                height: height - 700,
                width: width - 70,
              );
            },
          ),
          title: Column(
            children: [
              const Text(
                'ตำแหน่งสินค้า',
                textAlign: TextAlign.center,
              ),
              Gap(getProportionateScreenHeight(30)),
              const Text(
                'W1-Z05-1 พื้นที่รวม',
                textAlign: TextAlign.center,
              ),
              Gap(getProportionateScreenHeight(10)),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 50,
                  color: Styles.successColor,
                  child: const Icon(
                    Icons.compare_arrows_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
              Gap(getProportionateScreenHeight(10)),
              const Text(
                'W1-Z05-1 พื้นที่รวม',
                textAlign: TextAlign.center,
              ),
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
