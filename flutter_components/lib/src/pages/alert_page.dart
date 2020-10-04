import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas'),
      ),
      body: Center(
          child: RaisedButton(
        child: Text(
          'Mostrar Alert',
          style: TextStyle(color: Colors.white),
        ),
        shape: StadiumBorder(),
        color: Colors.green,
        onPressed: () {
          _mostrarAlert(context);
        },
      )),
      //Creacion de boton custom de return
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        //para cerrar la alerta dando click afuera
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0)),
            title: Text('Alerta Default'),
            //el content es un widget texto u otro tipo de widget
            // content: Text('Contenido'),
            content: Column(
              //permite que la columna se adapte a max o min segun se necesite
              //Max todo el maximo de la pantalla
              //Min el contenido de la columna
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Este es el contenido de la tarjeta'),
                FlutterLogo(
                  size: 100.0,
                ),
              ],
            ),
            //las alertas reciben un valor actions que permite
            //poner los botones ya de manera ordenada
            actions: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                //nos permite salir del alert Navigator...
                onPressed: () => Navigator.of(context).pop(),
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {
                  //nos permite salir del alert Navigator...
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}
