class Tarefa {
  String name;  
  Date date;
  bool isCompleted;

  Tarefa(String name) {
    this.name = name;
    this.date = DateTime.now();
    this.isCompleted = false;
  }
}