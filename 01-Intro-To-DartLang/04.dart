void main() {
  // Declaring Variables

  // using const so that number of stones cannot be changed
  const int stones = 6;

  String hero = 'Goku';
  String villain = 'Cell';
  bool heroWin = true;
  bool villainWin = false;

  if (stones < 6) {
    print("You have not collected all the Infinity Stones");
  } else if (stones == 6 && villainWin == true) {
    print('$villain has all the $stones Infinity Stones');
  } else if (stones == 6 && heroWin == true) {
    print('$hero has all the $stones Infinity Stones');
  } else {
    print('$hero and  $villain don\'t care about the stones');
  }
}
