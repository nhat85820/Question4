void main() {
  Map<String,dynamic> phoneBook = { 
    'Alice': 123456,
    'Bob': 789101,
    'Charlie': 201203,
    'Dave': 114523
  };
  var result = 
    phoneBook.keys.where((key) => key.length == 4);
  print(result);
}
