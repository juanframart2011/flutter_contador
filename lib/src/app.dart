import 'package:flutter/material.dart';
import 'package:flutter_contador/src/pages/contador_page.dart';
//import 'package:flutter_contador/src/pages/home_page.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
       // child: HomePage(),
        child: ContadorPage(),
      ),
    );
  }

}