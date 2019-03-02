import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(
                Icons.person_outline,
                size: 120,
                color: Colors.green,
              ),
              TextField(
                style: TextStyle(color: Colors.green, fontSize: 20),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Peso em KG",
                    labelStyle: TextStyle(color: Colors.green)),
              ),
              TextField(
                style: TextStyle(color: Colors.green, fontSize: 20),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Altura em cm",
                    labelStyle: TextStyle(color: Colors.green)),
              ),
              Padding(
                child: Container(
                    height: 50,
                    child: (RaisedButton(
                        color: Colors.green,
                        onPressed: () {},
                        child: Text(
                          "Calcular",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )))),
                padding: EdgeInsets.only(top: 10, bottom: 10),
              ),
              Text(
                "Info",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.green, fontSize: 20),
              )
            ],
          )),
    );
  }
}
