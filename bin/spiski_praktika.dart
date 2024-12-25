/*
  Задача 1: Уникальные элементы
Создайте список из 20 случайных целых чисел (в диапазоне от 1 до 50) и напишите функцию, 
которая возвращает новый список, содержащий только уникальные элементы.

Задача 2: Перевернуть список
Напишите функцию, которая принимает список и возвращает его перевёрнутую версию. 
Например,для списка [1, 2, 3] результатом будет [3, 2, 1].

Задача 3: Слияние и сортировка
Создайте два списка из 10 целых чисел, 
объедините их в один и отсортируйте по убыванию. 
Выведите результат.

Задача 4: Частота элементов
Напишите функцию, которая принимает список и возвращает карту (Map), 
где ключ — элемент списка, а значение — количество его вхождений в список.

Задача 5: Список квадратов
Создайте список из 10 целых чисел и напишите функцию, 
которая возвращает новый список, содержащий квадраты этих чисел.

Задача 6: Взаимное исключение
Напишите функцию, которая принимает два списка и возвращает новый список, 
содержащий только те элементы, которые присутствуют в одном из списков, 
но отсутствуют в другом.

Задача 7: Комбинации элементов
Создайте список из 4 строк и напишите функцию, 
которая генерирует все возможные комбинации из двух строк. 
Например, для списка ["a", "b", "c", "d"] 
результатом будут: ["a, b", "a, c", "a, d", "b, c", "b, d", "c, d"].

Задача 8: Параллельные списки
Создайте два списка: один с именами и другой с оценками. 
Напишите функцию, которая возвращает список строк в формате "Имя: Оценка".

Задача 9: Удаление дубликатов
Напишите функцию, которая принимает список и удаляет все дубликаты, 
сохраняя порядок появления элементов.

Задача 10: Найти максимальную разницу
Создайте список из 10 целых чисел и напишите функцию, 
которая находит максимальную разницу между любыми двумя элементами списка.
 */

import 'dart:math';

void main(List<String> arguments) {
  print('Задача 1');
  zadanija1();

  print('Задача 2');
  zadanija2([1, 2, 3]);

  print('Задача 3');
  zadanija3([1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
      [11, 12, 13, 14, 15, 16, 17, 18, 19, 20]);

  print('Задача 4');
  zadanija4([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);

  print('Задача 5');
  zadanija5([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);

  print('Задача 6');
  zadanija6([1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
      [11, 12, 13, 14, 15, 16, 17, 18, 19, 20]);
  zadanija6([11, 2, 3, 14, 5, 16, 7, 18, 9, 20],
      [11, 12, 13, 14, 15, 16, 17, 18, 19, 20]);

  print('Задача 7');
  zadanija7(['a', 'b', 'c', 'd']);

  print('Задача 8');
  zadanija8(['Иван', 'Петр', 'Сидор', 'Василий', 'Андрей'], [5, 4, 3, 2, 1]);

  print('Задача 9');
  zadanija9([1, 2, 1, 3, 2, 4, 5, 3, 6, 7, 6, 8, 9, 10, 8]);
}

void zadanija1() {
  // Создаем список
  var unikalniyNumbers = <int>[];
  // Создаем список из 20 случайных чисел от 1 до 50
  List<int> numbers = List.generate(20, (index) => Random().nextInt(50) + 1);
  // Через цикл For проходимся по списку по его длине
  for (int i = 0; i < numbers.length; i++) {
    // Если элемент не содержится в списке, добавляем его
    if (!unikalniyNumbers.contains(numbers[i])) {
      unikalniyNumbers.add(numbers[i]);
    }
  }
  // Сортируем список
  unikalniyNumbers.sort();
  // Выводим результат в консоль
  print(unikalniyNumbers);
}

void zadanija2(List<int> numbers) {
  // Переворачиваем список и выводим его в консоль
  print(numbers.reversed.toList());
}

void zadanija3(List<int> listOne, List<int> listTwo) {
  // Создаем новый список с элементами из двух списков
  List<int> newList = [...listOne, ...listTwo];
  // Сортируем список по убыванию
  newList.sort((a, b) => b.compareTo(a));
  // Выводим результат в консоль
  print(newList);
}

void zadanija4(List<int> numbers) {
  // Создаем словарь
  Map<int, int> frequencyMap = {};
  // Через цикл For проходимся по списку
  for (int i = 0; i < numbers.length; i++) {
    // Проверяем есть ли элемент в словаре
    if (frequencyMap.containsKey(numbers[i])) {
      // Если есть, то увеличиваем его количество
      frequencyMap[numbers[i]] = frequencyMap[numbers[i]]! + 1;
    } else {
      // Если нет, то добавляем его в словарь
      frequencyMap[numbers[i]] = 1;
    }
  }
  // Выводим результат в консоль
  print(frequencyMap);
}

void zadanija5(List<int> kvadratsChisl) {
  // Создаем новый список
  var newList = <int>[];
  // Через цикл For проходимся по списку по его длине
  for (int i = 0; i < kvadratsChisl.length; i++) {
    // Квадрат каждого элемента и добавляем его в новый список
    newList.add(kvadratsChisl[i] * kvadratsChisl[i]);
  }
  // Выводим результат в консоль
  print(newList);
}

void zadanija6(List<int> listOne, List<int> listTwo) {
  // Создаем новый список
  var newList = <int>[];
  // Через цикл For проходимся по списку по его длине
  for (int i = 0; i < listOne.length; i++) {
    // Если элемент из первого списка есть во втором списке, добавляем его в новый список
    if (listTwo.contains(listOne[i])) {
      newList.add(listOne[i]);
    }
  }
  // Выводим результат в консоль
  print(newList);
}

void zadanija7(List<String> strList) {
  // Создаем новый список
  var newList = <String>[];
  // Через цикл For проходимся по списку по его длине
  for (var ind = 0; ind < strList.length; ind++) {
    // Проходимся по списку начиная со следующего элемента
    for (var i = ind + 1; i < strList.length; i++) {
      // Добавляем пару элементов в новый список в формате "a, b"
      newList.add('${strList[ind]}, ${strList[i]}');
    }
  }
  // Выводим результат в консоль
  print(newList);
}

void zadanija8(List<String> strList, List<int> intList) {
  // Проверяем, что списки имеют одинаковую длину
  if (strList.length == intList.length) {
    final List<String> result = [];
    // Через цикл For проходимся по списку по его длине
    for (int i = 0; i < strList.length; i++) {
      // Добавляем пару элементов в новый список в формате "a: b"
      result.add('"${strList[i]}: ${intList[i]}"');
    }
    // Выводим результат в консоль
    print(result);
    // Если списки не имеют одинаковую длину
  } else {
    // Выводим результат в консоль
    print('Списки не имеют одинаковой длины');
  }
}

void zadanija9(List<int> numbers) {
  numbers.forEach((i) => print(i));
}
