class Task
{
  int _id;
  String _name;
  String _description = "";

  Task(int id, String name)
  {
    _id = id;
    _name = name;
  }

  void setDescription(String description) => _description = description;

  String getDescription() => _description;

  String getName() => _name;

  int getId() => _id;

  @override
  String toString() => "$_id - $_name";

  static Task factory(int id, String name) => new Task(id, name);
}
