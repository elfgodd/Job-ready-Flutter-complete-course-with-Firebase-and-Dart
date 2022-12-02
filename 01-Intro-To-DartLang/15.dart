void main() {
  // Static variables and methods

  var student1 = Student();
  print(student1.marks);
  // print(student1.score); // Won't be accessible
  // To access an static variable
  print(Student.score);

  student1.increaseMarks();
  student1.increaseScore();

  print(student1.marks);
  print(Student.score);

  var student2 = Student();
  print(student2.marks);
  student2.increaseScore();

  print(Student.score);
  print(Student.college());
}

class Student {
  int marks = 0; // Instance variable
  static int score = 10; // Static variable

  void increaseMarks() {
    // Instance Method
    marks++;
  }

  void increaseScore() {
    // Instance Method
    score += 10;
  }

  // It won't be accessible throught the object
  static String college() {
    // Static method
    return 'Harvard';
  }
}
