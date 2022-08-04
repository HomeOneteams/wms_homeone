import 'package:flutter/material.dart';
import 'routes/routes.dart';
import 'themeapp/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WMS',
      theme: theme(context: context),
      onGenerateRoute: Routers.generateRoute,
      initialRoute: '/',
    );
  }
}
