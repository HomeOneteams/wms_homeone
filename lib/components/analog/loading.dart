import 'package:flutter/cupertino.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key, this.text}) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
        title: Row(
      children:  [
       const CupertinoActivityIndicator(),
       const SizedBox(
          width: 5,
        ),
        Text(text??"Loading..."),
      ],
    ));
  }

  void showAlertDialogLoading(
      {required BuildContext context,
      String? title,
      required Widget subtitle,
      List<Widget>? actions}) {
    showCupertinoModalPopup<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => subtitle,
    );
  }
}
