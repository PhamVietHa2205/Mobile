import 'dart:io';
//recursive
double calSalary(double salary, int n) {
  if (n == 0) return salary;
  return calSalary(salary*1.1, n - 1);
}
//non-recursive
/* double calSalary(double salary, int n) {
  while (n > 0) {
    salary = salary * 1.1;
    n--;
  }
  return salary;
} */
void main() {
  double salary = double.parse(stdin.readLineSync()!);
  int n = int.parse(stdin.readLineSync()!);
  print(calSalary(salary, n).toStringAsFixed(2));
}