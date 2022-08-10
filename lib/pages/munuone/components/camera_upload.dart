import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wms_homeone/themeapp/themeapp_style.dart';

Widget buildButton({
  required String title,
  required IconData icon,
  required VoidCallback onClicked,
}) =>
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        maximumSize: Size.fromHeight(56),
        primary: Colors.white,
        onPrimary: Colors.black,
        textStyle: TextStyle(fontSize: 20),
      ),
      child: Row(
        children: [
          Icon(icon, size: 28),
          SizedBox(width: 16),
          Text(
            title,
            style: Styles.textcontentblackStyle,
          ),
        ],
      ),
      onPressed: () {},
    );
    
// return SingleChildScrollView(
//       child: Column(
//         children: [
//           ListTile(
//             leading: const CircleAvatar(
//               child: Icon(Icons.camera_alt_rounded),
//             ),
//             title: const Text('Camera Permission'),
//             subtitle: Text("Status of Permission : $cameraStatus"),
//             onTap: () async {
//               PermissionStatus cameraStatus = await Permission.camera.request();

//               if (cameraStatus == PermissionStatus.granted) {
//                 //todo;
//                 ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text('Permission Granted')));
//               }

//               if (cameraStatus == PermissionStatus.denied) {
//                 ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//                     content: Text('You neet to provide camera permission')));
//               }
//               if (cameraStatus == PermissionStatus.permanentlyDenied) {
//                 openAppSettings();
//               }
//             },
//           ),
//         ],
//       ),
//     );
//
