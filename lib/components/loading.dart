import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            width: 100,
            height: 100,
            child: Stack(children: [
              Image.asset(
                "assets/icons/logo2.png",
              ),
              const Center(child: CupertinoActivityIndicator())
            ]),
          )
        ],
      ),
    );
  }
}
