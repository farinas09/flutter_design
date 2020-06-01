import 'package:flutter/material.dart';
import 'package:flutter_design/src/utils/date_utils.dart';

class ScrollPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _page1(),
          _page2()
        ],
      ),
      
    );
  }

  Widget _page1() {
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        _backgroundImage(),
        _createText(),
      ],
    );
  }


  Widget _page2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.white,
          textColor: Colors.blue,
          onPressed: (){},
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 
              15.0, horizontal: 15.0
            ),
            child: Text('Welcome', style: TextStyle(fontSize: 18.0))
          ),
        )
      ), 
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _backgroundImage() {
    return Image.asset('assets/original.png',
    fit: BoxFit.cover);
  }

  Widget _createText() {
    final textStyle = TextStyle(color: Colors.white, fontSize: 70.0);
    final textStyle2 = TextStyle(color: Colors.white, fontSize: 30.0);
    final dateProvider = new CustomDateFormatter();
    String time = dateProvider.time;
    String date = dateProvider.dmy;
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text(time, style: textStyle),
          Text(date, style: textStyle2),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white,)
        ],
      ),
    );
  }

}