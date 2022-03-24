class Tarefa {
  String? name;  
  DateTime? dateTime;
  bool? isCompleted;

  Tarefa(String name) {
    this.name = name;
    this.dateTime = DateTime.now();
    this.isCompleted = false;
  }
}