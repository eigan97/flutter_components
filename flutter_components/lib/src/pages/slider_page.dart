import 'dart:ffi';

import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _value = 0.0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _crearSlider(),
            Text(_value.floor().toString()),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'Tamaño de la imagen',
        value: _value,
        min: 0,
        max: 100,
        divisions: 10,
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://avatars1.githubusercontent.com/u/24250197?s=460&u=c99c28e125ad31490f4971eb1420605c3286e432&v=4'),
      width: _value * 4,
      fit: BoxFit.contain,
    );
  }
}
