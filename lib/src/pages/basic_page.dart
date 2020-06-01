import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {

  final styleTitle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
  final styleSubTitle = TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          _createImage(),
          _createContainer(),
          _createActions(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
        ],
        ),
      ),
      
    );
  }

  Widget _createContainer() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(30.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Catedral de Granada', style: styleTitle,),
                  SizedBox(height: 7.0),
                  Text('Granada, Nicaragua', style: styleSubTitle,),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 25.0),
            Text('41', style: TextStyle(fontSize: 18.0))
          ],
        ),
      ),
    );
  }

  Widget _createImage() {
    return Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/06.Plaza_de_la_Independencia_de_Granada.JPG/1200px-06.Plaza_de_la_Independencia_de_Granada.JPG');
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _action(Icons.call, 'Call'),
        _action(Icons.near_me, 'Route'),
        _action(Icons.share, 'Share'),
      ],
    );
  }

  Widget _action(IconData icon, String text){
    return Column(children: <Widget>[
          Icon(icon, color: Colors.blue, size: 40.0),
          SizedBox(height: 5.0),
          Text(text, style: TextStyle(fontSize: 16.0, color: Colors.blue)),
          ],
        );

  }

  _createText() {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Text(
        'Esse dolore consectetur labore occaecat ad sunt duis. Sit dolor est magna minim. Laboris tempor ut sit occaecat laboris fugiat quis irure aliquip.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}