// Archivo: main.dart

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: MyMainWidget(),
    );
  }
}

class MyMainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('¡Hola, mundo!'),
      ),
    );
  }
}
class interfaz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('¡Hola, mundo!'),
      ),
    );
  }
}
class MyListViewSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Número de elementos en tu lista
      itemBuilder: (BuildContext context, int index) {
        return MyCustomListItem(index: index);
      },
    );
  }
}

class MyCustomListItem extends StatelessWidget {
  final int index;

  MyCustomListItem({required this.index});

  @override
  Widget build(BuildContext context) {
    // Diseña tu widget personalizado aquí (imagen, título, descripción).
    // Puedes utilizar ListTile o cualquier otro widget según tus necesidades.

    return ListTile(
      title: Text('Elemento $index'),
      onTap: () {
        // Agrega la funcionalidad para abrir una nueva pantalla con detalles
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(itemIndex: index),
          ),
        );
      },
    );
  }
}
class DetailScreen extends StatelessWidget {
  final int itemIndex;

  DetailScreen({required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    // Implementa la pantalla de detalles aquí
    // Muestra más información sobre el elemento seleccionado

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Elemento'),
      ),
      body: Center(
        child: Text('Detalles del Elemento $itemIndex'),
      ),
    );
  }
}
