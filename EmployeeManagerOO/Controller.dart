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
    print(reflect(type).type.reflectedType);
    if (reflect(type).type.reflectedType == Employee)
        employees.forEach((element) => print(element));
    else
        tasks.forEach((element) => print(element));
   }

  void remove(dynamic type, int id) => reflect(type).type.reflectedType == Employee ? employees.remove(id) : tasks.remove(id);

  void giveTask(int employeeId, int taskId)
  {
    var employeeName = employees[employeeId].getName();
    var taskName = tasks[taskId].getName();

    var map = new Map();
    map['employee'] = employeeName;
    map['task'] = taskName;

    taskEmployees.add(map);
  }

  void listTaskEmployees() => taskEmployees.forEach((element) => print(element));
}