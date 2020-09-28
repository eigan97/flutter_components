import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  List<int> contactos = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      //List View genera una pestaña con una vista de lista
      body: ListView(
        // children: _generateList(),
        children: _generateListCorto(),
      ),
    );
  }

  /*
   * Hay dos formas para crear listTile o items de lista en flutter
   * forma uno _generateList
   * forma dos _generateListCorto
  */
  List<Widget> _generateList() {
    final List<Widget> listaItems = new List<Widget>();
    //divider puede ser ocupado para poner una linea o un divisor entre la lista
    for (int item in contactos) {
      final Widget listItem = ListTile(
        title: Text('No. $item - List item title.'),
      );
      final Widget listDivided = Divider();
      // '..' con el doble punto referencio a la misma lista para seguir haciendo el add
      //es un poco mas limpio el codigo
      listaItems..add(listItem)..add(listDivided);
    }
    return listaItems;
  }

  List<Widget> _generateListCorto() {
    //.map regresa un iterable que no es lo mismo que una lista por lo que
    //hay que llamar el metodo toList() esto es un metodo mas simple;
    return contactos.map((item) {
      final Widget listItem = Column(
        children: <Widget>[
          ListTile(
            title: Text('No. $item - List item title.'),
            //estos son metodo de subtitle que permite añadir un valor mas pequeño
            subtitle: Text('$item Cualquier cosa.'),
            //Leading posiciona un icono al pincipio
            leading: Icon(Icons.phone),
            //trailing posisciona un icono al final
            trailing: Icon(Icons.keyboard_arrow_right),
            //ontop es la funcion que se ejecutara la dar click a un elemento, añade el efecto de click de material al registro de la lista
            onTap: () {},
          ),
          Divider()
        ],
      );
      return listItem;
    }).toList();
  }
}
