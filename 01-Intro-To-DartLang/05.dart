void main() {
  // Declaring Variables

  // List marks = [];
  List marks = [90, 80, 60, 30];
  // index     [ 0 , 1 , 2 , 3 ]

  print(marks[0]);
  print(marks[1]);
  print(marks[2]);
  print(marks[3]);

  print('\n');
  marks[0] = 10;
  print(marks[0]);

  print('\n');
  List age = [];
  // age[0] = 30; // This will show error
  age.add(25);
  age.add(199);
  age.add(333);
  print(age);

  age.remove(25); // removes value
  print(age);
  age.removeAt(1); // removes at index
  print(age);

  print('\n');
  print('The lenght of the List is ${marks.length}');
}
