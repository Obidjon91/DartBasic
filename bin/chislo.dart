
double a = 10.4;
double b = -20.25;
double c = 30.6;
double f = 40.7333;
int d = 10;
int e = 9;

void main(){

  //  Берем значение по модулю
  print(b);
  print(b.abs());
  // Округление до большего и меньшего ближайшего целого
  print(a);
  print(a.ceil());
  print(a.floor());

  // Округление до ближайшего целого
  print(a.round());

  // Число четное или нет?
  print(d.isEven);
  print(e.isEven);

  // Число нечетное или нет?
  print(d.isOdd);
  print(e.isOdd);

  //  Число отрицательное или нет?
  print(b.isNegative);
  print(e.isNegative);

  // Уменьшить количество цифр послей запятой
  print(f);
  print(f.toStringAsFixed(2));
  print(f.toStringAsFixed(3));
  print(f.toStringAsFixed(4));
  print(f.toStringAsFixed(5));
  print(f.toStringAsFixed(6));


  // Заполнить нулями слева и справа
  int chislo = 0000001;
  print(chislo.toString().padLeft(10, '0'));
  print(chislo.toString().padRight(10, '0'));
  

}