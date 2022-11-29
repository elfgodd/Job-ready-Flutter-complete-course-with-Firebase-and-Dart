void main() {
  // Exception Handling using Try Catch

  int year = 2021;
  int zero = 0;

  // int result = year ~/ zero;

  // print(result);

  // Try Catch Block

  try {
    int result = year ~/ zero;
    print(result);
  } catch (e) {
    print('Handled Exception: $e');
  }

  print('\n');

  List marks = [99, 88, 77];

  try {
    print(marks[3]);
  } catch (e) {
    print('Handled Exception: $e');
  }
}
