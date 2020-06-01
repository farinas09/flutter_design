import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_design/src/pages/basic_page.dart';
import 'package:flutter_design/src/pages/buttons_page.dart';
import 'package:flutter_design/src/pages/scroll_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designs',
      initialRoute: 'buttons',
      
      routes: {
        'basic' : (context) => BasicPage(),
        'scroll' : (context) => ScrollPage(),
        'buttons' : (context) => ButtonsPage(),
      }
    );
  }
}