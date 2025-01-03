/*
Задача 1: Слияние карт
    Создайте две карты с целыми числами в качестве значений. 
    Напишите функцию, которая объединяет их в одну карту. 
    Если ключи совпадают, складывайте значения.

Ожидаемый результат:
Map<String, int> map1 = {'a': 1, 'b': 2};
Map<String, int> map2 = {'b': 3, 'c': 4};
// Результат: {'a': 1, 'b': 5, 'c': 4}

Задача 2: Фильтрация по значению
  Создайте карту, где ключами являются названия городов, 
  а значениями — население. 
  Напишите функцию, которая возвращает новую карту с городами, 
  население которых больше определённого значения.

  Ожидаемый результат:
  Map<String, int> cities = {'Moscow': 12000000, 'Berlin': 3500000, 'Tokyo': 14000000};
  // Фильтруем по населению > 5000000
  // Результат: {'Moscow': 12000000, 'Tokyo': 14000000}

Задача 3: Подсчёт частоты
  Напишите функцию, которая принимает список строк и возвращает карту, 
  где ключ — строка, а значение — количество её вхождений в списке.

  Ожидаемый результат:
  List<String> words = ['apple', 'banana', 'apple', 'orange', 'banana', 'banana'];
  // Результат: {'apple': 2, 'banana': 3, 'orange': 1}

Задача 4: Инвертирование карты
  Напишите функцию, 
  которая принимает карту и возвращает новую карту с инвертированными 
  ключами и значениями (значения становятся ключами).

  Ожидаемый результат:
  Map<String, String> original = {'a': 'apple', 'b': 'banana'};
  // Результат: {'apple': 'a', 'banana': 'b'}

Задача 5: Сортировка карты
  Создайте карту с целыми числами в качестве значений. 
  Напишите функцию, которая возвращает список ключей отсортированных по значениям.

  Ожидаемый результат:
  Map<String, int> map = {'a': 3, 'b': 1, 'c': 2};
  // Результат: ['b', 'c', 'a']
Задача 6: Объединение значений по ключам
  Создайте карту, где ключи — это имена студентов, 
  а значения — списки их оценок. Напишите функцию, 
  которая возвращает карту с именами студентов и их средними оценками.

  Ожидаемый результат:
  Map<String, List<int>> grades = {
    'Alice': [90, 80, 85],
    'Bob': [70, 75, 80],
  };
  // Результат: {'Alice': 85.0, 'Bob': 75.0}

  Задача 7: Поиск максимального значения
  Напишите функцию, 
  которая принимает карту и возвращает ключ с максимальным значением.

  Ожидаемый результат:
  Map<String, int> scores = {'Math': 90, 'English': 85, 'Science': 95};
  // Результат: 'Science'

Задача 8: Группировка по начальной букве
  Создайте список строк и напишите функцию, 
  которая группирует их по первой букве в виде карты.

  Ожидаемый результат:
  List<String> fruits = ['apple', 'banana', 'apricot', 'blueberry'];
  // Результат: {'a': ['apple', 'apricot'], 'b': ['banana', 'blueberry']}
  
Задача 9: Извлечение уникальных значений
  Напишите функцию, 
  которая принимает карту и возвращает список уникальных значений.

  Ожидаемый результат:
  Map<String, int> map = {'a': 1, 'b': 2, 'c': 1};
  // Результат: [1, 2]

Задача 10: Преобразование карты в список
  Напишите функцию, 
  которая принимает карту и возвращает список строк формата "ключ: значение".

  Ожидаемый результат:
  Map<String, String> map = {'name': 'Alice', 'age': '25'};
  // Результат: ['name: Alice', 'age: 25']
*/