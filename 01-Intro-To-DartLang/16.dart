void main() {
  // Ternary operator and Null safety

  int age = 25;

  if (age > 10) {
    print('Allowed');
  } else {
    print('Now Allowed');
  }

  age > 18 ? print('yes') : print('no');

  print('\n');
  String? friend = 'Alberto Guzman';

  // Adding Null Safety
  void setFriend(String? name) {
    // tackle Null Safety
    // if (name == null) return;
    print(name?.toUpperCase());
  }

  setFriend(null);
  setFriend('Josue Guzman');

  // 3 ways to do this
  // void myName({String? name}) {
  // void myName({required String name}) {
  void myName({String name = 'guest'}) {
    print(name);
  }

  myName();
  // myName('Consuelo Leon'); // Error
  myName(name: 'Consuelo Leon');

  String? newName = 'Something';
  // myName(name: newName); // Null value
  // ! will say the value won't be Null
  myName(name: newName!);

  // late keyword
  // Use it when we will initialize a variable later on
}

class Student {
  // int id; // this will show Error
  late int id;
  late String name;

  void printId() {
    print(id);
  }
}
