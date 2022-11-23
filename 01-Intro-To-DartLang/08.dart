void main() {
  // Break and Continue Statements

  // Break
  for (var i = 0; i < 5; i++) {
    if (i == 2) {
      break;
    }
    print(i);
  }
  print('Flutter');

  print('\n');
  // Continue
  for (var j = 0; j < 5; j++) {
    if (j == 2) {
      continue;
    }
    print(j);
  }
  print('Flutter');
}
