import 'TaskController.dart';
import 'EmployeeController.dart';
import 'dart:mirrors';

class Controller
{
  List<Map> taskEmployees = new List();

  void listObjects(dynamic type) => type.printList();

  void remove(dynamic type, int id) => type.removeElement(id);

  void giveTask(int employeeId, int taskId)
  {
    var employeeName = EmployeeController.instance.list[employeeId-1].name;
    var taskName = TaskController.instance.list[taskId-1].name;

    var map = new Map();
    map['employee'] = employeeName;
    map['task'] = taskName;

    taskEmployees.add(map);
  }

  void listTaskEmployees() => taskEmployees.forEach((element) => print(element));
}
