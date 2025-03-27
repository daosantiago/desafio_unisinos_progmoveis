import 'package:desafio_unisinos/components/task.dart';
import 'package:flutter/material.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({super.key, required Widget child}) : super(child: child);

  final List<Task> taskList = [
    /*Task("Aprender Flutter", "assets/images/owl.jpg", 5),
    Task("Treino de Karate", "assets/images/bg.png", 4),*/
    // Task("Jogar Mário Kart", "assets/images/mario_kart.webp", 2),
    // Task("Receber as visitas", "assets/images/visita.png", 1),
    // Task("Comer lasanha", "assets/images/lasanha.webp", 1),
  ];

  void addTask(String name, String photo, int difficulty) {
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited old) {
    return old.taskList.length != taskList.length;
  }
}
