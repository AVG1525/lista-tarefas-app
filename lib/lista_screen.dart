import 'package:flutter/material.dart';
import 'tarefa.dart';

class ListaScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ListaScreenState();
  }
}

class ListaScreenState extends State<ListaScreen> {
  List<Tarefa> tarefas = <Tarefa>[];
  TextEditingController textEditingController = new TextEditingController();

  void AddNewTarefa(String name) {
    setState(() => tarefas.add(Tarefa(name)));

    textEditingController.clear();
  }

  void modifyIconButtonState(Tarefa tarefa) {
    setState(() => tarefa.isCompleted = !tarefa.isCompleted);
  }

  Widget getItem(Tarefa tarefa) {
    return new Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          icon: new Icon(
            tarefa.isCompleted ? Icons.check_box : Icons.check_box_outline_blank,
            color: Colors.green),
          iconSize: 42.0,
          onPressed: () => modifyIconButtonState(tarefa),
        ),
        new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              tarefa.name.toString(),
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            Text(tarefa.dateTime.toString())
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
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: textEditingController,
              onSubmitted: AddNewTarefa,
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: tarefas.length,
            itemBuilder: (_, index) => getItem(tarefas[index]),
          ))
        ],
      ),
    );
  }
}
