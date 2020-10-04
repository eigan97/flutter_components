import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;

  BorderRadius _br = BorderRadius.circular(8.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated'),
      ),
      body: Center(
        //existen dos tipos de contenedores -> Container() y AnimatedContainer que crea una animacion y a diferencia de Container recibe duration para la animacion
        //Tambien existe la propiedad curve que son animaciones predeterminadas
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.linearToEaseOut,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _br,
            color: _color,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: _color,
        child: Icon(Icons.play_arrow),
        onPressed: _cambios,
      ),
    );
  }

  void _cambios() {
    final random = Random();

    setState(() {
      this._width = random.nextInt(300).toDouble();
      this._height = random.nextInt(300).toDouble();
      this._color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      this._br = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
