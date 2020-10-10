import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input - Widget'),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          children: <Widget>[
            _crearInput(),
            Divider(),
            _crearPersona(),
          ],
        ),
      ),
    );
  }

  //
  Widget _crearInput() {
    return TextField(
      onChanged: (value) {
        setState(() {
          _nombre = value;
        });
      },
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      //decoration
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        counter: Text('Letras ${_nombre.length}'),
        labelText: 'Nombre de la persona',
        hintText: 'Jhon Doe',
        helperText: 'Solo es el nombre',
        suffixIcon: Icon(Icons.person_rounded),
        icon: Icon(Icons.account_box),
      ),
    );
  }

  Widget _crearPersona() {
    return ListTile(title: Text('Nombre es: $_nombre'));
  }
}
