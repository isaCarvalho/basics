import 'dart:io';

void main()
{
  print('Hello! Pick a number in 1 to 7: ');
  var number = stdin.readLineSync();

  print(pickADay(int.parse(number)));
}

String pickADay(int number)
{
  switch (number)
  {
    case 1:
      return 'Monday';

    case 2:
      return 'Tuesday';

    case 3:
      return 'Wendesday';

    case 4:
      return 'Thursday';
    case 5:
      return 'Friday';
    case 6:
      return  'Saturday';
    case 7:
      return 'Sunday';
    default:
      return 'Not a valid day';
  }
}
