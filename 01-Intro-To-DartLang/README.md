## 1. <u>Variables and Data type</u>

**Variables** are used to store information to be referenced and manipulated later

Built in Data Types:

1. Numbers: Int & double only (no float or long like C)
2. Strings
3. Boolean (True or False)
4. List(arrays)
5. Maps(Key value pair)[like Dictionary or Multidimensional]

<u>Variable Declaration</u>: DataType VariableName = Value;  
Int age = 25;  
or  
var age = 25;  
**Use Var keyword if we don't know what value will be assigned to the variable**

## 2. <u>String & String interpolation</u>

Strings are just collection of characters. We can declare a String with both single and double quotes

`String name = 'Flutter';`

If we want to write something like 'It's Easy i.e apostrophe or quotes within the quotes then we have to use backslash \ or Write single quotes within double to avoid any error'

`String Dart = 'It\'s Easy';`  
`String Dart = "It's Easy";`

### <u>Understanding String Interpolation</u>

Usually in other **languages** we can combine **variables** and **Strings** by writing

```
var name = "Alberto";
print("My name is " + name);
```

_Note: you cannot output String with Integer i.e. var name_= 5; will show error

This is also correct in Dart but not recommended. Dart prefers to write variables inside the double quotes By using $ before the variable name.

```
var name = 'Alberto';
print("My name is $name");
```

To perform some function like getting length or additon, subtraction or anything we use ${}

```
int length = 20;
int breadth = 10;
print("Sum is ${length + breadth}");
```

## 3. <u>Final & Const Keywords</u>

These are used when we know that the value will be constant and can't be changed later

**Const Keyword:** Const is used if the value is known at compile time. In simple words while development we hardcore the value.

```
const int marks = 90;
// marks = 50; // this will show error
```

**Final Keyword:** Suppose we don't know the value while writing code but the value will be calculated Or fetched from database at runtime. And we don't want the value to be changed after Being fetched and assigned to a variable.

`final String name = "Flutter;`

E.g.: pie = 3.14; is a constant while date = DateTime.now() is final because the date is being fetched at runtime

## 4. <u>Conditional Statements</u>

**IF ELSE:** If the condition is true then run the code else run another code  
**IF ELSE IF:** If you have multiple conditions  
**AND / OR OPERATOR:** Two conditions can be joined using && i.e. AND otherwise Using || i.e. OR Operator

<u>&& OPERATOR</u>: Both conditions must be true  
<u>|| OPERATOR</u>: If either condition is true

## 5. <u>Lists</u>

A **List** is simply an ordered group of any Datatype. It is commonly known as Arrays in other languages Each element in the List is identified by a unique number called the **index**. The index starts from 0 and extends to **n-1** where **n** is the total number of elements in the List.

## 6. <u>Map</u>

The Map object is a simply key/value pair. Key will be of String type but the values in a map may be of any type. To declare a map, we can use the Map constructor or you need to enclose the key-value pairs within a pair of curly brackets "{};"

var variable_name = {key1: value1, key2: value2, ......}

## 7. <u>Looping Statements</u>

Loops are used to output data multiple number of times.

Loops: FOR, FOR IN, While, Do while

<u>FOR LOOP</u>
The **for loop** executes a block of code for a specified number of times.

```
for (initialization; condition; step) {
  // Statements
}

for(int i = 0; i < 3, i++) {
  print(i);
}
```

<u>FOR..IN LOOP</u>
The **for..in loop** is used to loop through a List or Map. Is used most of the time.

```
for(variableName in object) {
  // code to execute
}

var collection = [1, 2, 3, 4, 5];
  for(var a in collection) {
    print(a);
  }

var marks = {'alberto': 90, 'josue': 85};
  for(var a in marks.entries) {
    print(a.key);
    print(a.value);
  }
```

<u>WHILE LOOP</u>
We mostly use **while loop** when we don't know how many times the loop will actually execute. Here In example we know the limit, but suppose play music until user press stop.

```
while(condition) {
  // Statements to be executed if the condition is true
}

int number = 0;
while (number < 10) {
  if(number % 2 == 0) {
    print(number);
    number++;
  }
}
```

<u>DO WHILE LOOP</u>
**do-while loop** first executes the statements and then check for the condition

```
do {
  Statements(s) to be executed;
} while (condition)

var i = 6;
do {
  print(i);
  i++;
} while(i <= 5);
```

## 8. <u>Break and Continue Statements</u>

```
// Break

for(var i = 0; i < 5; i++>) {
  if(i == 2) {
  break;
  }
  print(i);
}
```

```
// Continue
for(var j = 0; j < 5; j++>) {
  if(j == 2) {
  continue;
  }
  print(j);
  }
```

## 9. <u>Declaring Functions and Short hand Syntax</u>

### <u>FUNCTION IN DART</u>

Function is just a collection of codes or statements grouped together to perform a task

- Return type (optional but recommended): Int
- Function name: findArea
- Parameter or Arguments: (int length, int breath)

```
Int findArea(int length, int breadth) {
  // function body
  return length * breadth
}
```

Suppose if we are not returning anything then we can use Void as a return type

### <u>WAYS TO WRITE A FUNCTION</u>

Function without passing arguments

```
void main() {
  findPerimeter();
}

void findPerimeter() {
  int length = 4;
  int breadth = 2;
  int perimeter = 2 * (length + breadth);
  print('The perimeter is $perimeter);
}
```

Function with arguments

```
void main() {
  findPerimeter(4, 2);
}

void findPerimeter(int length, int breadth) {
  int perimeter = 2 * (length + breadth);
  print('The perimeter is $perimeter');
}
```

Function with Arguments and a return type

```
int findPerimeter(int length, int breadth) {
  int perimeter = 2 \* (length + breadth);
  return perimeter;
}
```

SHORT HAND SYNTAX / FAT ARROW  
If our function body contains only one line of code / statement then we use => to declare the function and make it look short

```
void main() {
  findPerimeter(4, 2);
}

void findPerimeter(int length, int breadth) => print('The perimeter is ${2 * (length + breadth)}');
```

## 10. <u>Types of Parameters in Function</u>

Parameter:

- Optional -> Positional, Named, Default
- Required

### <u>Required Parameter</u>

```
void main() {
  printName('hulk', 'Ironman', 'Spiderman');
}

void printName(String name1, String name2, String name3) {
  print('$name1 and $name2 and $name3 are friends');
}
```

If you remove the third parameter then it will show error

### <u>Optional Positional Parameter</u>

To make a parameter optional we use [] But remember to use Null safety (?) in that case

```
void main() {
  printName('Hulk', 'Ironman');
}

void printName(String name1, String name2, [String? name3]) {
  print('$name1 and $name2 and $name3 are friends');
}
```

Here it won't show error but $name3 will show null as a value

### <u>Named Parameter</u>

Suppose we have lot of parameters then it will be difficult to remember their position. We use {}
to declare a named parameter.

```
void main() {
  int volume = findVolume(2, breadth: 3, height: 10);
  print(volume);
}

int findVolume(int length, {int? breadth, int? height}) {
  return length * breadth * height;
}
```

- Here the parameters becomes optional by default.
  So we have to use Null Safety(?) within {}
- In flutter every widget / element is using named parameter

### <u>Default Parameter</u>

If we don't specify a value then it shows null but we can hardcore a default value in case of named parameters only

```
void main() {
  profile('Flutter);
}

void profile(String workshop, {String host = 'Guest User'}) {
  print('$workshop is conducted by $host');;
}
```

- We can pass Value and Override the default one
- Here since we have already assigned a value so we
  don't have to use Null Safety(?)

## 11. <u>What are Classes and Objects</u>

**A class is a blueprint or featured common to all its objects**

E.g. A student class. All students will have their id and name. All students perform functions like study and play. So we can make it a class. In class functions are called methods and variables and variables are called Properties.

```
void main() {}
  class Student {
    int id;
    int name;

    void study() {
      print('Studying Sincerely');
    }
    void play() {

    }
  }
```

Note: class is logical representation doesn't store any memory until an object has been created

### <u>What are Objects?</u>

**An object is something that will assign value or access all variables and methods defined in a class**

E.g. We had a Student class. But now if we want to enter a student detail then we have to make a instance of that class.

```
void main() {
  var student = Student();
  // new keyword is optional
}

var student1.id = 20;
var student1.name = 'Alberto';
print('${student.id} and ${student.name}');
student1.study();
```

### <u>Constructors</u>

Constructors are method / function within a class which will run before executing any other code irrespective of their position. As any other method has to be called. But even if we don't call a constructor, it will automatically get executed.

- A Constructor is declared by writing the class name with ()
- When we are instantiating a class then we are calling the default constructor
- Constructors doesn't have a return type. They don't return Anything

```
void main() {
  var student1 = Student();
  student1.play();
}

class Student {
  int id;
  String name;

  void play() {
    print('I am playing');
  }

  // Constructor
  Student() {
    print('I am a Constructor');
  }
}
```

### <u>Parameterized Constructor</u>

Same way we pass parameters in a function like that we can pass parameter to a constructor And then assign that value to a variable / property in that class.

```
main() {
  var student1 = Student(35, 'Alberto');
    print(student.id);
}

class Student {
  int id;
  String name;

  Student(int ind, String name) {
    this.id = id;
    this.name = name;
  }
}
```

**NOTE** This way of sending data is used all the time in Flutter

## 12. <u>GENERIC TYPE</u>

Collections in Dart are heterogenous by default. That means collections like List, Map can contain values of various types. The concept of generics can be used to achieve to hold Strictly a certain data type only. It will Show error if you try to assign different value. It is declared using <datatype>

```
List<String> name = ['Vegeta', 'Goku', 'Gohan'];

List<int> age = [20, 25, 30];

Map<String, String> profile = {'name': 'Alberto', 'state': 'Guzman'}
```

**NOTE:** Generics can be used for anything such as class, function, object etc In Flutter we will see generic everywhere

### <u>CONTROLLING ACCESSIBILITY</u>

By default all variables and functions are public and accessible to the object we create. But we can make our variables and functions private by using underscore \_ before its name.

```
Class Student {
  int _age = 25;
}
```

### <u>INHERITANCE</u>

Suppose we have two classes. Now what is common between the two.

```
Class Dog {
  String color;
  String breed;

  void bark() {

  }
  void eat() {

  }
}
```

```
Class Cat {
  String color;
  int age;

  void meow() {

  }

  void eat() {
  }
}
```

In the previous two classes, the property Color and method Eat are common. So we can make a separate class and put those common characteristics. In our example, both are animals

```
Class Animal {
  String color;

  void eat() {}
}
```

Now we can change our previous class and extend them to the class Animal by using extends keyword

```
Class Dog extends Animal {
  String breed;

  void bark() {}
}
```

```
Class Cat extends Animal {
  int age;

  void meow() {

  }
}
```

**Here Dog and Cat called child class and Animal is called super class or Parent Class**

## 13. <u>Exception Handling using Try Catch</u>

When a program ends abruptly or have an error. This Situation is known as an exception

```
void main() {
  int year = 2021;
  int zero = 0;

  int result = year ~/ zero;
  print(result);
}
```

```
void main() {
  int year = 2021;
  int zero = 0;

  try {
    int result = year ~/ zero;
    print(result);
  } catch(e) {
    print('Handled Error: $e');
  }
}
```

Another example of error can be having a List and printing index which is not available in the List.
