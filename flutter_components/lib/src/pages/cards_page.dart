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
        padding: EdgeInsets.all(15),
        // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2()
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
                child: Text('Ok', style: TextStyle(color: Colors.blue)),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Cancelar', style: TextStyle(color: Colors.red)),
                onPressed: () {},
              ),
              SizedBox(width: 10)
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
        child: Column(
      children: <Widget>[
        //es un widget para hacer la carga de imagenes
        /**
         * -Recibe la imagen a cargar
         * -Recibe una imagen para mostrar mientras carga
         * -Recibe la duracion del efecto fade
         * -Un tamaño por defecto para que la imagen de placeholder y la de carga midan lo mismo
         * -recibe un atributo fit que es como el de bakcground-size
         * para ajustar la imagen en la caja a una medida
         */
        FadeInImage(
          image: NetworkImage('https://wallpaperaccess.com/full/1666037.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 250.0,
          fit: BoxFit.cover,
        ),

        // Image(
        //   image: NetworkImage('https://wallpaperaccess.com/full/1666037.jpg'),
        // ),
        Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea de que poner.'))
      ],
    ));
  }
}

class EdgesInsets {}
