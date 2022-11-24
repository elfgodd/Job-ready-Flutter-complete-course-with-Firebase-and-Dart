void main() {
  // Functions

  // Function without passing arguments
  void findParameter() {
    int length = 2;
    int breadth = 4;

    int perimeter = 2 * (length * breadth);
    print('The perimeter is $perimeter');
  }

  findParameter();

  print('\n');
  // Function passing arguments
  void findParameter2(int length, int breadth) {
    int perimeter = 2 * (length * breadth);
    print('The perimeter is $perimeter');
  }

  findParameter2(5, 5);

  print('\n');
  // Function with arguments and a return type
  int findParameter3(int length, int breadth) {
    int perimeter = 2 * (length * breadth);
    return perimeter;
  }

  int result = findParameter3(7, 3);
  print('The perimeter is $result');

  int finalTotal = result + 100;
  print('The final total after adding is $finalTotal');

  print('\n');
  int userAge() {
    return 20;
  }

  int getUserAge = userAge();

  if (getUserAge < 18) {
    print('He cannot drive');
  } else {
    print('Allowed to drive a Car');
  }

  print('\n');
  void findPerimeter4(int length, int breadth) =>
      print('The perimeter is ${2 * (length + breadth)}');

  findPerimeter4(4, 2);

  print('\n');
  int userAge2() => 17;
  int getUserAge2 = userAge2();
  if (getUserAge2 < 18) 'User can\'t drive';
}
