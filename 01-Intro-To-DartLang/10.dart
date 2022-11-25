void main() {
  // Types of Parameters in Function

  // Required parameter type
  void printName(String name1, String name2, String name3) {
    print('$name1 & $name2 & $name3');
  }

  // printName('Vegeta', 'Goku'); // Error 1 argument mission
  printName('Hulk', 'Ironman', 'Spiderman');

  print('\n');
  // Null safety
  // If any variable or function can return or accept a value which can be null
  // In that case you have to declare the datatype as Nullable
  // Which can be done with the expression ?
  void printName2(String name1, String name2, [String? name3]) {
    print('$name1 & $name2 & $name3');
  }

  printName2('Vegeta', 'Goku');
  printName2('Vegeta', 'Goku', 'Freeza');

  print('\n');
  // Named Parameter
  // In named Parameters, The values becomes optionals
  // i.e. it can be null
  // So we have to use Null Safety

  int findVolume(
      {required int length, required int breadth, required int height}) {
    return length * breadth * height;
  }

  int volume = findVolume(length: 5, breadth: 5, height: 5);
  print(volume);

  print('\n');
  // Default Parameter

  int findVolume2({int length = 2, int breadth = 4, int height = 5}) {
    return length * breadth * height;
  }

  print(findVolume2());

  print('\n');
  void profile(String workshop, {String host = 'Guest'}) {
    print('$workshop is conducted by $host');
  }

  profile('Flutter');
  profile('Flutter', host: 'Google');
}
