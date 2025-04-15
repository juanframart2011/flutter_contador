import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final _textStyle = TextStyle(fontSize: 25, color: Colors.blueAccent, fontWeight: FontWeight.w900);
  final conteo = 0; // Variable de estado

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
      ),
      body: Center(
        //child: Text('Número de Clicks'),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de Clicks', style: _textStyle,),
            Text( '$conteo', style: _textStyle,),
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //print('Hola Mundo');
        },
      ),
    );
  }
}