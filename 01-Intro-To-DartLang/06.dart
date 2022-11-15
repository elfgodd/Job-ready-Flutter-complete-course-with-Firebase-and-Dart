void main() {
// Declaring Variables

// using Map constructor
  Map fruits = Map();
  fruits['apple'] = 'red';

  print(fruits); // {apple: red}
  print(fruits['apple']); // red

  print('\n');
  fruits['banana'] = 'yellow';
  print(fruits); // {apple: red, banana: yellow}
  print(fruits['banana']); // yellow

  print('\n');
  // We will declare a map using {}
  Map user = {
    'name': 'Alberto',
    'age': 35,
    'founder': 'AlienRoom',
  };
  print(user);
  print('Founder of ${user['founder']} is ${user['name']}');
  print(user.length);
  print(user.keys);
  print(user.values);
  user.forEach((key, value) {
    print('$key : $value');
  });

  user['country'] = 'Colombia';
  print(user);
  user.remove('country');
  print(user);
}
