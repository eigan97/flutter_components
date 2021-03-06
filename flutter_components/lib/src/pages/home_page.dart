import 'package:flutter/material.dart';
import 'package:flutter_components/src/providers/menu_provider.dart';
import 'package:flutter_components/src/utils/icono_string_util.dart';

import 'alert_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Componentes'),
        ),
        body: _getLista());
  }

  Widget _getLista() {
    return FutureBuilder(
      //future recibe un future que ha resolver
      future: menuProvider.cargarData(),
      //initial data es la infomacion que se tiene de inicio
      initialData: [],
      //builder retorna un widgetbuilder y recibe una funcion que recibe como argumento
      // un buildContext y un asyncSnapshot del tipo de nuestro retorno del futre
      //buildContext
      //Este builder se dispara en las 3 fases del future
      //pending,resolve,error
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItem(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItem(List<dynamic> data, context) {
    List<Widget> opciones = [];

    data.forEach((element) {
      opciones.add(
        ListTile(
          title: Text(element['texto']),
          leading: getIcon(element['icon']),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.black,
          ),
          onTap: () {
            //forma dinamica de navegacion
            Navigator.pushNamed(context, '/' + element['ruta']);
            //Forma de ir a un solo componente
            // final route = MaterialPageRoute(builder: (context) => AlertPage());
            // Navigator.push(context, route);
          },
        ),
      );
    });
    return opciones;
  }
}
