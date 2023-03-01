import 'dart:io';

void main() {
  Map<String, dynamic> personal = {
    'Name': 'Nhat',
    'Address': 'Hai Phong',
    'Age': 20,
    'Country': 'Viet Nam'
  };
  personal['Country'] = 'China';
  print(personal);
}
