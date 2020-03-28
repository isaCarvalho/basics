import 'dart:io';
import 'Controller.dart';
import 'Task.dart';
import 'Employee.dart';

class Main
{
  static Controller controller = new Controller();

  static void menuEmployee()
  {
    print("Please, pick an operation: ");
    print('1 - New employee');
    print('2 - Remove employee');
    print('3 - List employees');
    print('4 - Log out');

    int number = int.parse(stdin.readLineSync());

    switch(number)
    {
      case 1:
        print("Please, digit the employee name: ");
        var name = stdin.readLineSync();

        print("Please, digit the employee CPF: ");
        var cpf = stdin.readLineSync();

        controller.insertEmployee(name, cpf);
        break;

      case 2:
        controller.list(Employee);
        print("\n-------------------------\nPlease digit the employee id: ");

        var id = int.parse(stdin.readLineSync());
        controller.remove(Employee, id);
        break;

      case 3:
        controller.list(Employee);
        break;

      case 4:
        return;
    }
  }

  static void menuTask()
  {
    print("Please, pick an operation: ");
    print('1 - New task');
    print('2 - Remove task');
    print('3 - List tasks');
    print('4 - Log out');

    int number = int.parse(stdin.readLineSync());

    switch(number)
    {
      case 1:
        print("Please, digit the task name: ");
        var name = stdin.readLineSync();

        controller.insertTask(name);
        break;

      case 2:
        controller.list(Task);
        print("\n-------------------------\nPlease digit the task id: ");

        var id = int.parse(stdin.readLineSync());
        controller.remove(Task, id);
        break;

      case 3:
        controller.list(Task);
        break;

      case 4:
        return;
    }
  }

  static void giveTask()
  {
    controller.list(Task);
    print("\n-------------------------\nPlease digit the task id: ");

    var employeeId = int.parse(stdin.readLineSync());
    controller.remove(Task, employeeId);

    controller.list(Employee);
    print("\n-------------------------\nPlease digit the employee id: ");

    var taskId = int.parse(stdin.readLineSync());
    controller.remove(Employee, taskId);

    controller.giveTask(employeeId, taskId);
  }

  static void listTaskEmployees()
  {
    controller.listTaskEmployees();
  }
}

void main()
{
  print('Hello! Please digit your user name: ');
  var userName = stdin.readLineSync();

  print('Please digit your password: ');
  var password = stdin.readLineSync();

  var number = 0;
  if (authenticate(userName, password))
  {
    while (number != 4)
    {
      print('Please, pick an operation: ');
      print('1 - Employees');
      print('2 - Tasks');
      print('3 - Give a task to a employee');
      print('4 - List the employees\' tasks');
      print('5 - Log out');

      number = int.parse(stdin.readLineSync());

      switch(number)
      {
        case 1:
          Main.menuEmployee();
          break;

        case 2:
          Main.menuTask();
          break;

        case 3:
          Main.giveTask();
          break;

        case 4:
          Main.listTaskEmployees();
          break;

        default:
          print('Loggin out...\nBye!');
          return;
      }
    }
  }
  else
    print('Not a valid user!');
}

bool authenticate(String userName, String password)
{
  bool authenticateUser(String name) => name == 'default';

  bool authenticatePassword(String password) => password == 'admin';

  return authenticateUser(userName) && authenticatePassword(password);
}
