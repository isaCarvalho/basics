class Employee
{
  int _id;
  String _name;
  String _cpf;
  double _payment;
  bool _profile = false; // if the employee is a boss

  Employee(int id, String name, String cpf)
  {
    _id = id;
    _name = name;
    _cpf = cpf;
  }

  String setPayment(double payment)
  {
    if (payment < 1200.00 || payment > 3.000)
      return "Invalid payment";

    _payment = payment;
    return "Payment setted!";
  }

  double getPayment() => _payment;

  int getId() => _id;

  String getName() => _name;

  String getCpf() => _cpf;

  void setProfile(bool profile) => _profile = profile;

  bool getProfile() => _profile;

  @override
  String toString() => "$_id - $_name - $_cpf";

  static Employee factory(int id, String name, String cpf) => new Employee(id, name, cpf);
}
