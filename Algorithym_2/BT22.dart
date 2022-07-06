import 'dart:io';

/* //non-recursive
int calMonth(double money, double rate) {
  double expect_money = money * 2;
  int month = 0;
  while (money < expect_money) {
    money *= rate;
    month++;
  }
  return month;
} */

//recursive
int calMonth(double expect_money, double money, double rate, int n) {
  if (money >= expect_money) return n;
  return calMonth(expect_money, money * rate, rate, n + 1);
}
void main() {
  double money = double.parse(stdin.readLineSync()!);
  double rate = double.parse(stdin.readLineSync()!);
  
  //print(calMonth(money, rate)); //print non-recursive
  
  print(calMonth(money * 2, money, rate, 0)); //print recursive
}
