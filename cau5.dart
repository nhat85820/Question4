import 'dart:io';

void main() {
  List<String> friends = ['Anh', 'Dong', 'Thien', 'Hung'];
  List<String> startWithA =
      friends.where((element) => element.startsWith('A')).toList();
  print(startWithA);
}
