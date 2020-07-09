import 'package:flutter/material.dart';

class CalculadoraImc extends StatefulWidget {
  @override
  _CalculadoraImcState createState() => _CalculadoraImcState();
}

class _CalculadoraImcState extends State<CalculadoraImc> {
  String _str = 'Informe seus dados!';
  TextEditingController peso = TextEditingController();
  TextEditingController altura = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                _str = 'Informe seus dados!';
                altura.clear();
                peso.clear();
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(
                Icons.person_outline,
                size: 120.0,
                color: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: altura,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Altura (cm)',
                    labelStyle: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    ),
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: peso,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Peso (kg)',
                    labelStyle: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    ),
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        spreadRadius: 1.0,
                      ),
                    ],
                  ),
                  width: double.maxFinite,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                    ),
                    color: Colors.blue,
                    padding: EdgeInsets.all(20.0),
                    onPressed: () {
                      double weight = double.parse(peso.text);
                      double height = double.parse(altura.text) / 100;
                      double imc = weight / (height * height);
                      setState(() {
                        _str = 'Seu imc é: ${imc.toStringAsPrecision(4)}';
                      });
                    },
                    child: Text(
                      "Calcular",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                _str,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
