class Employee
{
  int id;
  String name;
  String cpf;

  double _payment;
  bool _profile = false; // if the employee is a boss

  Employee(this.id, this.name, this.cpf);

  String setPayment(double payment)
  {
    if (payment < 1200.00 || payment > 3.000)
      return "Invalid payment";

    _payment = payment;
    return "Payment setted!";
  }

  double get payment => _payment;

  void set profile(profile) => _profile = profile;

  bool get profile => _profile;

  @override
  String toString() => "$id - $name - $cpf";

  static Employee factory(int id, String name, String cpf) => new Employee(id, name, cpf);
}
