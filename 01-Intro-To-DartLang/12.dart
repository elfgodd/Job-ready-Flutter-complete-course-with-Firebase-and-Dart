void main() {
  // Generic Type
  // A generic type is create using the < and >

  // List user = ['Alberto', 35, true];
  List<String> user = ['Alberto', 'Josue', 'Consuelo'];
  // List<String> user2 = ['Alberto', 'Josue', 11]; // Error only Strings
  List<int> marks = [33, 85, 77];

  Map<String, String> users = {'name': 'Alberto', 'age': '35'};

  List<int> addData() {
    return [
      3,
      54,
    ];
  }

  var student1 = Student();
  print(student1._id);
}

class Student {
  int _id = 2; // private
  int _age = 34; // private
}
