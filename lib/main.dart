import 'package:calcimc/calcImc.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(Inicial());
  
}

class Inicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculadoraImc(),
    );
  }
}
