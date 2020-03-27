import 'dart:io';

List employeesList = new List();

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
      print('1 - Insert Employee');
      print('2 - Remove Employee');
      print('3 - List all Employees');
      print('4 - Log out');

      number = int.parse(stdin.readLineSync());

      switch(number)
      {
        case 1:
          print('Digit the employee name');
          var name = stdin.readLineSync();
          insert(name);
          break;

        case 2:
          print('Digit the employee name');
          var name = stdin.readLineSync();
          remove(name);
          break;

        case 3:
          printList();
          break;

        default:
          print('Loggin out...\nBye!');
          break;
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

void insert(String name)
{
  employeesList.add(name);
}

void remove(String name)
{
  employeesList.remove(name);
}

void printList()
{
  print(employeesList);
}
