import 'package:flutter/material.dart';

import 'package:flutter_components/src/pages/alert_page.dart';
import 'package:flutter_components/src/pages/avatar_page.dart';
import 'package:flutter_components/src/pages/home_page.dart';
// import 'package:flutter_components/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      // home: HomePage(),
      //Definicion de rutas dinamicas e inicio de ruta de home
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        '/alert': (BuildContext context) => AlertPage(),
        '/avatar': (BuildContext context) => AvatarPage(),
      },
    );
  }
}
