import 'package:flutter/material.dart';

class ListaScreen extends StatelessWidget {
  Widget getItem() {
    return new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: new Icon(
                    Icons.check_box, 
                    color: Colors.green
                  ), 
                  iconSize: 42.0,
                  onPressed: () {  },
                ),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget> [
                    Text("Lavar o carro"),
                    Text("24/04/08")
                  ],
                )
              ],
            );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Lista de Tarefas"),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            Expanded(
              child: ListView( 
                children: <Widget> [
                  getItem(),
                  getItem(),
                  getItem()
                ],
              )
            )
          ],
        ),
      );
  }
}