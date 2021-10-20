import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  performTask1();
  String task2result = await performTask2();
  performTask3(task2result);
}

void performTask1() {
  String result = "task1 data";
  print(result);
}

Future performTask2() async {
  Duration duration = Duration(seconds: 3);
  String result;
  await Future.delayed(duration, () {
    result = "task2 data";
    print(result);
  });
  return result;
}

void performTask3(String task2Data) {
  String result = "task3 data with $task2Data";
  print(result);
}
