import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0,color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    final String imageUrl =
        'https://images.unsplash.com/34/BA1yLjNnQCI1yisIZGEi_2013-07-16_1922_IMG_9873.jpg?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=751&q=80';
    return Scaffold(
        body: Column(
      children: [
        Image(image: NetworkImage(imageUrl)),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 20.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Volcan nevado',style: estiloTitulo),
                    SizedBox(height: 7.0),
                    Text('Volcan cubierto de nieve',style: estiloSubtitulo),
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
        )
      ],
    ));
  }
}
