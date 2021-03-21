import 'dart:math';
import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _fondo(),
        ],
      ),
    );
  }

  Widget _fondo() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ])),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi/5.0,
      child: Container(
        width: 300.0,
        height: 300.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          //color: Colors.pink
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ]
          )
        ),
      )
    );

    return Stack(
      children: [
        gradiente,
        Positioned(
          top: -100,
          child: cajaRosa
        )
      ],
    );
  }
}
