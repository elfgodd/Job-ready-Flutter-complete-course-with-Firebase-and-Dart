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
