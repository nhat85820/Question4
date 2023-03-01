import 'dart:io';

void main() {
  int? n = int.parse(stdin.readLineSync()!);
  List<double> expenses = [];
  double s = 0;
  for (int i = 0; i < n; i++) {
    double? a = double.parse(stdin.readLineSync()!);
    expenses.add(a);
    s = s + a;
  }
  print('$s');
}
