void main() {
  // Loops

  // For Loop

  List marks = [50, 30, 20, 10];

  for (int i = 0; i < marks.length; i++) {
    print(marks[i]);
  }

  print('\n');
  // For...in

  for (var mark in marks) {
    print(mark);
  }

  print('\n');
  Map user = {'alberto': '35', 'josue': '30'};

  for (var data in user.entries) {
    // print(data);
    print(data.key);
    print(data.value);
  }

  print('\n');
  int number = 0;
  while (number < 5) {
    print(number);
    number++;
  }

  print('\n');
  do {
    print(number);
    number++;
  } while (number < 10);
}
