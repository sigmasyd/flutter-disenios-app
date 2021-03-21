import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final String imageUrl =
      'https://images.unsplash.com/34/BA1yLjNnQCI1yisIZGEi_2013-07-16_1922_IMG_9873.jpg?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=751&q=80';
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Column: el comportamiento por defecto es que no es scrollable
      // Listview funciona pero queda el detalle del notch(la barra) no se ve bien
      body: SingleChildScrollView(
        child: Column(
          children: [
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ]
        ),
      )
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(this.imageUrl),
        height: 250.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              // ocupa el espacio restante
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Volcan nevado', style: estiloTitulo),
                  SizedBox(height: 7.0),
                  Text('Volcan cubierto de nieve', style: estiloSubtitulo),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE')
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(
          height: 5.0,
        ),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue)),
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 40.0,
        ),
        child: Text('Excepteur sit officia mollit dolore enim reprehenderit. Anim occaecat consequat ipsum laborum. Esse deserunt ad non officia veniam deserunt veniam eu ipsum. Eiusmod aliquip sit magna adipisicing mollit ex excepteur incididunt consectetur fugiat nisi dolor ea. Cupidatat id excepteur ipsum reprehenderit est dolor eiusmod in eiusmod consequat duis.',
        textAlign: TextAlign.justify,)
      ),
    );
  }
}
