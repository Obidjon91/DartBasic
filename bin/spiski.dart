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
    try {
      final String line = stdin.readLineSync().toString().toLowerCase();
      if (line == 'X' || line == 'x') {
        // print(line);
        isTrue = false;
      } else if (line == '1' || line == '2' || line == '3' || line == '4' ||
          line == '5' || line == '6' || line == '7' || line == '8' ||
          line == '9' || line == '10' || line == '11' || line == '12') {
        print('======================================');
        print('$line Месяц: ${listOfMonths[int.parse(line) - 1]}');
        print('======================================');
      }
    } catch (e) {
      print('error...: $e');
      break;
    }
  }
}
