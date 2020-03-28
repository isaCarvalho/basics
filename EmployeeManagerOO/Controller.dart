import 'Task.dart';
import 'Employee.dart';
import 'dart:mirrors';

class Controller
{
  List<Employee> employees = new List();
  List<Task> tasks = new List();
  List<Map> taskEmployees = new List();

  void insertEmployee(String name, String cpf)
  {
    var employee = Employee.factory(employees.length + 1, name, cpf);
    employees.add(employee);
  }

  void insertTask(String name)
  {
    var task = Task.factory(tasks.length + 1, name);
    tasks.add(task);
  }

  void list(dynamic type)
  {
    if (type == Employee)
        employees.forEach((element) => print(element));
    else
        tasks.forEach((element) => print(element));
   }

  void remove(dynamic type, int id) => type == Employee ? employees.removeAt(id-1) : tasks.removeAt(id-1);

  void giveTask(int employeeId, int taskId)
  {
    var employeeName = employees[employeeId-1].name;
    var taskName = tasks[taskId-1].name;

    var map = new Map();
    map['employee'] = employeeName;
    map['task'] = taskName;

    taskEmployees.add(map);
  }

  void listTaskEmployees() => taskEmployees.forEach((element) => print(element));
}
