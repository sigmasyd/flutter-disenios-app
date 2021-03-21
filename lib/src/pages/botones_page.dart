import 'dart:math';
import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _fondo(),
          SingleChildScrollView(
            child: Column(
              children: [
                _titulos(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: 
      _bottonNavigationBar(context),

      /*BottomNavigationBar(
        fixedColor: Colors.pink,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart_outline_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle), label: ''),
        ],
      ),*/
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
        angle: -pi / 5.0,
        child: Container(
          width: 300.0,
          height: 300.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80.0),
              //color: Colors.pink
              gradient: LinearGradient(colors: [
                Color.fromRGBO(236, 98, 188, 1.0),
                Color.fromRGBO(241, 142, 172, 1.0),
              ])),
        ));

    return Stack(
      children: [gradiente, Positioned(top: -100, child: cajaRosa)],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Classify transaction',
                style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
            Text('Classify this transaction into a particular category',
                style: TextStyle(color: Colors.white, fontSize: 18.0)),
          ],
        ),
      ),
    );
  }

  Widget _bottonNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        //canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        //primaryColor: Colors.pinkAccent,
        /*textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(Color.fromRGBO(0, 0, 152, 1.0))
        )*/
      ),
      child: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Color.fromRGBO(116, 117, 152, 1.0),
        // ahora se usa para ocultar etiqueta del item selected
        showSelectedLabels: false,
        // ahora se usa para ocultar etiqueta del item unselected
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today,size: 30.0),
            //title: Container()  // deprecado, se usa label
            label: '' // solo acepta String, no Text
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart,size: 30.0),
            //title: Container()
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle,size: 30.0),
            //title: Container()
            label: ''
          ),
        ],
      ),
    );
  }
}
