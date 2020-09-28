import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        /*
         * padding para hacer de todos es con all
         * para hacer de arriba abajo o de izquierda derecha
         * es con symmetric
         */
        padding: EdgeInsets.all(20),
        // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        children: <Widget>[
          _cardTipo1(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: [
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.ac_unit, color: Colors.green),
            title: Text('Soy el titulo de una tarjeta'),
            subtitle: Text(
                'Aqui estamos con la descripcion que quiero que ustedes vean para tener una idea de la taejta que quiero mostrarles.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                child: Text(
                  'Ok',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                onPressed: () {},
              ),
              FlatButton(
                child: Text(
                  'Cancelar',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                onPressed: () {},
              ),
              SizedBox(
                width: 10,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class EdgesInsets {}
