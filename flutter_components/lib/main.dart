import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_components/src/pages/alert_page.dart';
import 'package:flutter_components/src/routes/routes.dart';
// import 'package:flutter_components/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('es', 'MX')
        // ... other locales the app supports
      ],
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      // home: HomePage(),
      //Definicion de rutas dinamicas e inicio de ruta de home
      initialRoute: '/',
      routes: getApplicationRoutes(),
      // Solo para las rutas que no existen en routes
      // direccionan al atributo de abajo
      onGenerateRoute: (RouteSettings settings) {
        //lo que hace si la ruta no existe
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage(),
        );
      },
    );
  }
}
