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
  findPerimeter(4, 2)
}

void findPerimeter(int length, int breadth) => print('The perimeter is ${2 * (length + breadth)}');
```
