// ignore_for_file: deprecated_member_use

import 'dart:io';

class Queu {
  late int max = 100;
  late int front = 0;
  late int rear = -1;
  late List<String> data = [];
  String get() {
    if (front < 0 || front > rear) return "No data";
    return data[front];
  }

  void push(String data) {
    if (rear == max - 1) {
    } else {
      this.rear++;
      if (this.data.length >= 0 && rear < this.data.length)
        this.data[rear] = data;
      else {
        this.data.add(data);
      }
    }
  }
}

void main() {
  Queu queu = new Queu();
  late String call = (stdin.readLineSync()!);
  while (call != "stop") {
    if (call.compareTo("get") == 0) {
      print("get data: ${queu.get()}");
    } else if (call.compareTo("push") == 0) {
      String data = stdin.readLineSync()!;
      queu.push(data);
    }
    ;
    call = (stdin.readLineSync()!);
  }
}
