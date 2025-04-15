import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}
class _ContadorPageState extends State<ContadorPage> {
  final _textStyle = TextStyle(fontSize: 25, color: Colors.blueAccent, fontWeight: FontWeight.w900);
  int _conteo = 0; // Variable de estado

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador Page'),
        centerTitle: true,
      ),
      body: Center(
        //child: Text('Número de Clicks'),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de Clicks', style: _textStyle,),
            Text( '$_conteo', style: _textStyle,),
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 5.0,),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _reset,
        ),
        Expanded(child: SizedBox(width: 5.0,)),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _sustraer,
        ),
        SizedBox(width: 5.0,),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _agregar,
        ),
        SizedBox(width: 5.0,),
      ],
    );
  }

  void _agregar() {
    setState(() {
      _conteo++;
    });
  }

  void _sustraer() {
    setState(() {
      _conteo--;
    });
  }

  void _reset() {
    setState(() {
      _conteo = 0;
    });
  }
}