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
  } else if (year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)) {
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
  int result = (num1 * num2) ~/ nokalgoritm(num1, num2);
  print('Наименьшее общее кратное чисел:$result');
}

int nokalgoritm(int a, int b) {
  if (b == 0) {
    return a;
  }
  return nokalgoritm(b, a % b);
}
//7

int summ1() {
  print("Введите число:");
  int num1 = int.parse(stdin.readLineSync() ?? '') ?? 0;
  if (num1 < 0) {
    print("Число должно быть положительным или нулевым");
  }
  int sum = 0;
  for (int i = num1; i > 0; i ~/= 10) {
    sum += i % 10;
  }

  print('суммы его цифр равна:$sum');
  return sum;
}
//8

void palindrom() {
  print("Введите слово");
  String word = stdin.readLineSync() ?? 'empty';
  int lastIndex = word.length - 1;
  for (int i = 0; i < word.length; i++) {
    if if (word[i].toLowerCase() != word[lastIndex - i].toLowerCase()) {
      return print('Не является палидромом');
    }

    } 
  return print('Слово является палиндромом');
}
