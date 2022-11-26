void main() {
  // Classes and Objects

  // var student1 = Student(); // Object creation
  // print(student1.name);
  // student1.id = 1;
  // student1.name = 'Alberto';

  // print(student1.name);
  // student1.study();
  // student1.play();

  var student2 = Student(1, 'Josue');

  print(student2.id);
  print(student2.name);
  student2.study();
  student2.play();

  print('\n');
  var student3 = Student(2, 'Andres');
  print(student3.id);
  print(student3.name);
}

class Student {
  int? id;
  String? name;

  Student(int studentId, String studentName) {
    this.id = studentId;
    this.name = studentName;
    print('this is a Constructor'); // This prints first
  }

  void study() {
    print('Studying');
  }

  void play() {
    print('playing');
  }
}
