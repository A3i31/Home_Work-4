import 'dart:io';

void main() {
  //1
  set([1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89],
      [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]);
  //2
  iseven([1, 4, 9, 16, 25, 36, 49, 64, 81, 100]);

  //3
  print(func('a', 'Daaaaaaart'));

  //4
  summ();
  //5
  year();
  //6
  nok();
  //7
  summ1();
  //8
   palindrom();
}

//1 отдельная функция
List<int> set(List<int> a, List<int> b) {
  List<int> result = [];
  for (int i = 0; i < a.length; i++) {
    if (b.contains(a[i])) {
      result.add(a[i]);
    }
  }
  print(result.toSet().toList());
  return result;
}

//2 отдельная функция
List<int> iseven(List<int> c) {
  List<int> d = [];
  for (int i = 0; i < c.length; i++) {
    if (c[i] % 2 == 0) {
      d.add(c[i]);
    }
  }
  print(d);
  return d;
}

//3 отдельная функция
int func(String bukva, String slovo) {
  int counter = 0;
  for (int i = 0; i < slovo.length; i++) {
    if (slovo[i].toLowerCase() == bukva.toLowerCase()) {
      counter++;
    }
  }
  return counter;
}

//4
void summ() {
  print('Введите начало диапазона чисел');
  int num1 = int.parse(stdin.readLineSync() ?? "") ?? 0;
  print('Введите конец диапазона чисел');
  int num2 = int.parse(stdin.readLineSync() ?? "") ?? 0;
  if (num1 == 0 || num2 == 0) {
    print('ошибка:введите целые числа');
  } else if (num1 > num2) {
    print('начальное число должно быть меньше или равно конечному числу');
  }
  int sum = 0;
  for (int i = num1; i <= num2; i++) {
    sum += i;
  }
  print('Сумма всех чисел в заданном диапазоне: $sum');
}

//5
void year() {
  print('Введите год:');
  int year = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
  if (year <= 0) {
    print('Ошибка');
  } else if (year % 4 == 0 ) {
    print('$year високосный год');
  } else {
    print('$year не високосный год');
  }
}

//6
void nok() {
  print("Введите первое число: ");
  int num1 = int.parse(stdin.readLineSync() ?? '') ?? 0;
  if (num1 <= 0) {
    print("Число должно быть положительным и ненулевым");
  }
  print("Введите второе число: ");
  int num2 = int.parse(stdin.readLineSync() ?? '') ?? 0;
  if (num2 <= 0) {
    print("Число должно быть положительным и ненулевым");
  }
  for (int i = num1; i > -1; i++) {
    if (i % num1 == 0 && i % num2 == 0) {
      print(i);
      break;
    }
  }
}
//7

void summ1() {
  print("Введите число:");
  int num1 = int.parse(stdin.readLineSync() ?? '') ?? 0;
  String num2 = num1.toString();
  int summ = 0;
  if (num1 < 0) {
    print("Число должно быть положительным или нулевым");
  }
  for (int i = 0; i < num2.length; i++) {
    summ += int.parse(num2[i]);
  }
  print(summ);
}
//8

void palindrom() {
  print("Введите слово");
  String word = stdin.readLineSync() ?? 'empty';
  String b = word.split('').reversed.toList().join();
  if (word == b) {
    print('Палендром');
  } else {
    print('Не палендром');
  }
}
