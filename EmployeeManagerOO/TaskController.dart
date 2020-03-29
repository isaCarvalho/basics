import 'Task.dart';
import 'Controller.dart';

class TaskController extends Controller
{
  List<Task> list = new List();

  static TaskController _instance = null;

  TaskController._();

  static TaskController get instance
  {
      if (_instance == null)
        _instance = TaskController._();

      return _instance;
  }

  void insert(String name)
  {
    var task = Task.factory(list.length + 1, name);
    list.add(task);
  }

  void removeElement(int index) => list.removeAt(index);

  void printList() => list.forEach((element) => print("Task: $element"));
}
