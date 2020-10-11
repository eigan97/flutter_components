import 'dart:ffi';

import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _value = 0.0;
  bool _bloquearCheck = false;
  IconData iconoLockOpen = Icons.lock_open;
  IconData iconoLock = Icons.lock;
  IconData _icon = Icons.lock_open;
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
            _createCheck(),
            _createSlider(),
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
      divisions: 100,
      onChanged: (_bloquearCheck)
          ? null
          : (value) {
              setState(() {
                _value = value;
              });
            },
    );
  }

  Widget _createCheck() {
    // Hay dos tipos de checkbox uno que solo muestra la caja y otro que muestra el nombre y la caja
    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged: (value) {
    //     setState(() {
    //       _bloquearCheck = value;
    //     });
    //   },
    // );
    return CheckboxListTile(
      title: Text('Bloquear sllider'),
      secondary: Icon(_icon),
      value: _bloquearCheck,
      onChanged: (value) {
        setState(() {
          _icon = _bloquearCheck ? iconoLockOpen : iconoLock;
          _bloquearCheck = value;
        });
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://avatars1.githubusercontent.com/u/24250197?s=460&u=c99c28e125ad31490f4971eb1420605c3286e432&v=4'),
      width: _value * 4,
      fit: BoxFit.contain,
    );
  }

  Widget _createSlider() {
    return SwitchListTile(
      title: Text('Bloquear sllider'),
      secondary: Icon(_icon),
      value: _bloquearCheck,
      onChanged: (value) {
        setState(() {
          _icon = _bloquearCheck ? iconoLockOpen : iconoLock;
          _bloquearCheck = value;
        });
      },
    );
  }
}
