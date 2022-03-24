class Tarefa {
  String? name;  
  DateTime dateTime = DateTime.now();
  bool isCompleted = false;

  Tarefa(String name) {
    this.name = name;
  }
}