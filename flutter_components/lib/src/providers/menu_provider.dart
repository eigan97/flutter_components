// Show Expone lo que se necesita del package especificamente
// Se necesita rootBundle para leer el archivo json
import 'package:flutter/services.dart' show rootBundle;

import 'dart:convert';

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {}
  // rootBundle devuelve un future por eso el uso de async await, se podria usar un
  // .then
  Future<List<dynamic>> cargarData() async {
    dynamic data = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(data);
    opciones = dataMap['rutas'];
    return opciones;
  }
}

final menuProvider = new _MenuProvider();
