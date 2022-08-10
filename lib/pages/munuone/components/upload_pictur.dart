import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wms_homeone/components/button/luffy_button.dart';
import 'package:wms_homeone/data.dart';
import 'package:wms_homeone/pages/munuone/page_third.dart';

import 'package:image_picker/image_picker.dart';

import '../../../size_config/size_config.dart';
import '../../../themeapp/themeapp_style.dart';

class UploadPicture extends StatefulWidget {
  const UploadPicture({Key? key}) : super(key: key);

  @override
  State<UploadPicture> createState() => _UploadPictureState();
}

class _UploadPictureState extends State<UploadPicture> {
  File? image;

  Future pickImageC() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick camera: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 150,
        ),
        Gap(getProportionateScreenHeight(10)),
        SizedBox(
          width: double.infinity,
          height: 160,
          child: MaterialButton(
              padding: EdgeInsets.all(getProportionateScreenHeight(10)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
                color: Colors.white,
                child: Text("อัพโหลดรูปภาพ",
                    style: Styles.textlableStyle.copyWith(fontSize: 15)),
              onPressed: () {
                pickImageC();
              }),
        ),
        Gap(getProportionateScreenHeight(20)),
           
             image != null
                ? Image.file(image!)
                : Center(
                    child: Text(
                    'ไม่มีรูปภาพที่จะแสดง',
                    style: Styles.textlableStyle.copyWith(fontSize: 15),
                  )),
      ],
    );
  }
}
