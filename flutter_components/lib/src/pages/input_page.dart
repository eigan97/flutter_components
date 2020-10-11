import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _fecha = '';
  String _password = '';
  String _opcionSeleccionada = 'Valor';

  List _poderes = ['Valor', 'Rayos', 'Volar'];
  TextEditingController _inputDateController = new TextEditingController();
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
            _createInputEmail(),
            Divider(),
            _createPassword(),
            Divider(),
            _createFecha(context),
            Divider(),
            _crearDropdown(),
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
      // autofocus: true,
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
    return ListTile(
      title: Text('Nombre es: $_nombre'),
      subtitle: Text('Este es email: $_email'),
      trailing: Text(_opcionSeleccionada),
    );
  }

  Widget _createInputEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
      autofocus: true,
      //decoration
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        labelText: 'Email',
        hintText: 'example@dominio',
        helperText: 'Correo Electronico',
        suffixIcon: Icon(Icons.email),
        icon: Icon(Icons.alternate_email),
      ),
    );
  }

  Widget _createPassword() {
    return TextField(
      obscureText: true,
      onChanged: (value) {
        setState(() {
          _password = value;
        });
      },
      autofocus: true,
      //decoration
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        labelText: 'Password',
        hintText: 'Password',
        helperText: '(Mayor a 8, mayuscula, minuscula, numeros, signos)',
        suffixIcon: Icon(Icons.lock),
        icon: Icon(Icons.lock_rounded),
      ),
    );
  }

  Widget _createFecha(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false, // no se puede copiar informacion
      controller: _inputDateController,
      onTap: () {
        //Quita el focus
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
      //decoration
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        labelText: 'Fecha de nacimiento',
        hintText: 'DD/MM/YYYY',
        suffixIcon: Icon(Icons.calendar_today),
        icon: Icon(Icons.perm_contact_calendar),
      ),
    );
  }

  Future _selectDate(BuildContext context) async {
    //mostrar el valor
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025),
      locale: Locale('es', 'MX'),
    );
    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputDateController.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem> getOpts() {
    List<DropdownMenuItem<String>> lista = new List();
    _poderes.forEach((element) {
      lista.add(DropdownMenuItem(
        child: Text(element),
        value: element,
      ));
    });
    return lista;
  }

  Widget _crearDropdown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: DropdownButton(
            value: _opcionSeleccionada,
            items: getOpts(),
            onChanged: (opt) {
              setState(() {
                _opcionSeleccionada = opt;
              });
            },
          ),
        )
      ],
    );
  }
}
