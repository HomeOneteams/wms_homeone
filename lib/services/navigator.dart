import 'package:flutter/material.dart';

sendToBack({required BuildContext context}) => Navigator.pop(context);
sendToPage(
        {required BuildContext context,
        required String routeName,
        Object? args}) =>
    Navigator.pushNamed(context, routeName, arguments: args);
sendToPageAndRemoveUntil(
        {required BuildContext context,
        required String routeName,
        Object? args}) =>
    Navigator.pushNamedAndRemoveUntil(
        context, routeName, arguments: args, (route) => false);
