class Task
{
  int id;
  String name;

  String _description = "";

  Task(this.id, this.name);

  void set description(description) => _description = description;

  String get description => _description;

  @override
  String toString() => "$id - $name";

  static Task factory(int id, String name) => new Task(id, name);
}
