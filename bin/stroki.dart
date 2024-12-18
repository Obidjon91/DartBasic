

void main(List<String> arguments) {
  String name = 'Maksim';
  String lastName = 'Petrov';
  // Печатаем строку в консоль
  print(name);
  
  // Получаем из строки значение по индексу
  print(name[0]);
  
  // Получаем из строки значение по индексу
  print(name[1]);
  
  // Получаем длина строки
  print(name.length);
  
  // Переводим строку в верхний регистр
  print(name.toUpperCase());
  
  // Переводим строку в нижний регистр
  print(name.toLowerCase());
  
  // Переводим первый символ в верхний регистр
  print(name[0].toUpperCase() + name.substring(1));

  // Переводим первую букву в верхний регистр
  print(name.replaceRange(0, 1, name[0].toUpperCase()));

  // Конкатенация строк
  print('Hello! ' + name);
  print(lastName + ' ' + name);
  String fullName = '$lastName $name Kto ti ara?';
  print(fullName);

  // Удаление пробелов
  String myName = '   Obidjon';
  String myLastName = 'Bozorov   ';
  String myGorod = '   Bukhara  ';
  print(myName.trimLeft());
  print(myLastName.trimRight());
  print(myGorod.trim());

  // Split
  String myFullName = 'Obidjon Bozorov';  
  print(myFullName.split(' '));
  print(myFullName.split(','));
  print(myFullName);

  // Replace
  String myFullName2 = 'Obidjon Bozorov';
  print(myFullName2.replaceAll(' ', ','));

  // Проверка строка на пустоту
  String myFullName3 = 'Obidjon Bozorov';
  print(myFullName3.isNotEmpty); // Возвращает true если строка не пустая
  print(myFullName3.isEmpty); // Возвращает true если строка пустая

}