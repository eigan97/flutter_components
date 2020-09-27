import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      //List View genera una pestaña con una vista de lista
      body: ListView(
        children: _generateList(),
      ),
    );
  }

  List<Widget> _generateList() {
    List<int> contactos = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    final List<Widget> listaItems = [];
    //divider puede ser ocupado para poner una linea o un divisor entre la lista
    final Widget listDivided = Divider();
    for (var item in contactos) {
      final Widget listItem = ListTile(
        title: Text('No. $item - List item title'),
      );
      listaItems.add(listItem);
      listaItems.add(listDivided);
    }
    return listaItems;
  }
}
