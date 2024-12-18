import 'dart:io';

String returnCity(String city) => city;
int returnMonth(int month) => month;

void main(List<String> arguments) {
  var listOfCities = [
    'Moscow',
    'London',
    'New York',
    'Tokyo',
    'Paris',
    'Berlin',
    'Sydney',
    'Tashkent'
  ];
  List<String> list = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z'
  ];
  final List<String> listOfMonths = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  bool isTrue = true;
  while (isTrue) {
    print('Введите число от 1 до 12:');
    print('X - выход из программы');
    final String line = stdin.readLineSync().toString().toLowerCase();
    try {
      int month = int.parse(line);
      if (line == 'X' || line == 'x') {
        print(line);
        isTrue = false;
      }
      // if (month < 1 || month > 12) {
      //   print(listOfMonths[month - 1]);
      // }
    } catch (e) {
      print('error!!!: $e');
      break;
    }
  }
}
