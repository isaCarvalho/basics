class Task
{
  int id;
  String name;

  String _description = "";

  Task(this.id, this.name);

  void setDescription(String description) => _description = description;

  String getDescription() => _description;

  @override
  String toString() => "$id - $name";

  static Task factory(int id, String name) => new Task(id, name);
}
