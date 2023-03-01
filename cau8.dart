import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    stdout.write('Nhập lệnh (add, remove, view, hoặc quit): ');
    String command = stdin.readLineSync() ?? '';

    if (command.toLowerCase() == 'add') {
      addTask(tasks);
    } else if (command.toLowerCase() == 'remove') {
      removeTask(tasks);
    } else if (command.toLowerCase() == 'view') {
      viewTasks(tasks);
    } else if (command.toLowerCase() == 'quit') {
      return;
    } else {
      stdout.writeln('Lệnh không hợp lệ!');
    }
  }
}

void addTask(List<String> tasks) {
  stdout.write('Nhập nhiệm vụ của bạn: ');
  String task = stdin.readLineSync() ?? '';
  tasks.add(task);
}

void removeTask(List<String> tasks) {
  stdout.write('Nhập số thứ tự của nhiệm vụ cần xóa: ');
  int index = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
  if (index >= 1 && index <= tasks.length) {
    tasks.removeAt(index - 1);
  } else {
    stdout.writeln('Số thứ tự không hợp lệ!');
  }
}

void viewTasks(List<String> tasks) {
  if (tasks.isEmpty) {
    stdout.writeln('Không có nhiệm vụ nào!');
  } else {
    for (int i = 1; i <= tasks.length; i++) {
      stdout.writeln('$i: ${tasks[i - 1]}');
    }
  }
}
