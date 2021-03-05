import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador",
      home: Home() ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _pessoa = 0;
  String _info = "Pode Entrar!";

  void _alterarPessoa(int valor){
    setState(() {
      _pessoa+=valor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/restaurant.jpg",
          fit: BoxFit.cover,
          height: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas $_pessoa",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text(
                    "+1",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  onPressed: (){
                    _alterarPessoa(1);
                  },
                ),
                FlatButton(
                  child: Text(
                    "-1",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  onPressed: (){
                    _alterarPessoa(-1);
                  },
                ),

              ],
            ),
            Text(
              _info,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                  decoration: TextDecoration.none
              ),
            )
          ],
        )
      ],
    );
  }
}

