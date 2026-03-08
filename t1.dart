import 'dart:io';

void main() {
  print("Enter numbers separated by space: ");
  String input = stdin.readLineSync()!;
  List<String> parts = input.split(" ");
  List<int> numbers = [];
  for (int i = 0; i < parts.length; i++) {
    numbers.add(int.parse(parts[i]));
  }
  print("Duplicates:");

  for (int i = 0; i < numbers.length; i++) {
    int count = 1;
    bool alreadyCounted = false;
    for (int k = 0; k < i; k++) {
      if (numbers[k] == numbers[i]) {
        alreadyCounted = true;
        break;
      }
    }
    if (alreadyCounted) continue;

    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] == numbers[j]) {
        count++;
      }
    }
    if (count > 1) {
      print("${numbers[i]}: $count");
    }
  }
}
