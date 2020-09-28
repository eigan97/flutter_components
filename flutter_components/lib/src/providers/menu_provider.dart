// Show Expone lo que se necesita del package especificamente
// Se necesita rootBundle para leer el archivo json
import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    cargarData();
  }

  cargarData() async {
    dynamic data = await rootBundle.loadString('data/menu_opts.json');
    print(data);
  }
}

final menuProvider = new _MenuProvider();
