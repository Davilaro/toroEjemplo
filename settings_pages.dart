

import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/widgets/menu_widget.dart';

class SettingsPage extends StatefulWidget {
  static final String routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
// Implementar funcion color secundario y opcion masculino femenino (LOGICA DE INTERFACE)
//Paso 1: Crear variables
bool _colorSecundaruio = true;
int _genero = 1;
String _nombre = 'Pedro';
//soy un comentario nuevo
//Variable para el campo de texto.
TextEditingController _textController;

@override
  void initState() {
  
    super.initState();
    //para implementar logica de interface
    //Que aparezca Pedro en el editText
    _textController = new TextEditingController( text: _nombre ); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Ajustes')),
        drawer: MenuWidget(),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text('Settings', 
              style: TextStyle(
                fontSize: 45.0, 
                fontWeight: FontWeight.bold)
              ),
            ),
            Divider(),
            SwitchListTile(
              value: _colorSecundaruio,
              title: Text('Color secundario'),
              //paso 2 en el onchange recibe un value
              onChanged: (value) {
                //el setstate iguala la variable creada al value
                setState(() {
                  _colorSecundaruio = value;
                });
                
              },
              ),

              RadioListTile(
                value: 1,
                title: Text('Masculino'),
                //Esta propiedad groupValue es igual a la variable. 
                groupValue: _genero, 
                //igualamos la variable creada al value que recibe este onchange
                onChanged: (value) {
                    setState(() {
                     _genero = value;
                  });
                },
                ),

              RadioListTile(
                value: 2,
                title: Text('Femenino'), 
                //Esta propiedad groupValue es igual a la variable.
                groupValue: _genero,
                //igualamos la variable creada al value que recibe este onchange 
                onChanged: (value) {
                  setState(() {
                     _genero = value;
                  });
                 
                 },
              ),
              Divider(),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre de la persona usando el telefono',
                  ),
                  onChanged: (value) { },
                  )
              ),
          ],
        )
      );
  }
}
