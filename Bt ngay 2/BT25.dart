// ignore_for_file: deprecated_member_use

import 'dart:io';

class Stack {
  late int max = 100;
  late int top = -1;
  late List<String> data = [];
  String get() {
    if (top < 0) return "No data";
    return data[top];
  }

  void push(String data) {
    if (top == max) {
    } else {
      this.top++;
      if (this.data.length >= 0 && top < this.data.length)
        this.data[top] = data;
      else {
        this.data.add(data);
      }
    }
  }
}

void main() {
  Stack stack = new Stack();
  late String call = (stdin.readLineSync()!);
  while (call != "stop") {
    if (call.compareTo("get") == 0) {
      print("get data: ${stack.get()}");
    } else if (call.compareTo("push") == 0) {
      String data = stdin.readLineSync()!;
      stack.push(data);
    }
    ;
    call = (stdin.readLineSync()!);
  }
}
