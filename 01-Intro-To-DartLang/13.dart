void main() {
  // Inheritance Concept

  var dog = Dog();

  dog.eat();
}

// Parent Class
class Animal {
  String? color;
  void eat() {
    print('Eating');
  }
}

// Child Class
class Dog extends Animal {
  String? breed;
  void bark() {}
}
