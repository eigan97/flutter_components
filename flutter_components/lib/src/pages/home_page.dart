import 'package:flutter/material.dart';
import 'package:flutter_components/src/providers/menu_provider.dart';

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
    print(menuProvider.cargarData());
    return ListView(
      children: _listaItem(),
    );
  }

  List<Widget> _listaItem() {
    return [
      ListTile(title: Text('Hola Mundo')),
      ListTile(title: Text('Hola Mundo2')),
      ListTile(title: Text('Hola Mundo3'))
    ];
  }
}
