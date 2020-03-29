import 'Employee.dart';
import 'Controller.dart';

class EmployeeController extends Controller
{
  List<Employee> list = new List();

  static EmployeeController _instance = null;

  EmployeeController._();

  static EmployeeController get instance
  {
      if (_instance == null)
        _instance = EmployeeController._();

      return _instance;
  }

  void insert(String name, String cpf)
  {
    var employee = Employee.factory(list.length + 1, name, cpf);
    list.add(employee);
  }

  void removeElement(int index) => list.removeAt(index);

  void printList() => list.forEach((element) => print("Employee: $element"));
}
