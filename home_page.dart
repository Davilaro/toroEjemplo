

import 'package:flutter/material.dart';

import 'package:preferenciasusuarioapp/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  
  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de Usuario')
      ),
      //El drawer es propiedad del scaffold y crea una barra lateral para un menu
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
            Text('Color secundario:'),
            Divider(),
            Text('Genero:'),
            Divider(),
            Text('Nombre usuarios:'),
            Divider(),

        ],
      ),
      
    );
  }

  
}