## 1. <u>Understanding Futures</u>

### <u>What is Asynchronous?</u>

Simply in a normal way of writing programs, Codes are being executed line by line and until
one function complete execution, the next function has to wait. But in Asynchronous programming,
we mention the functions which may take time to execute and wait for their completion in background
, without stopping the execution of the next piece of code. In this way parallel execution of code is achieved.

### When we talk about Asynchronous Programming in dart. The two terms that comes to mind are:

- Futures
- Streams

### <u>FUTURES</u>

A Future is simply what itsname is. That is the data will come after some time in future.
Imagine we will ask for some data from database, and the result will be returned after few seconds.

### Defining a Future

A future is defined exactly like a function in dart, but just we use Future as a prefix.
If you want to mention the return type of the function then you can write as Future<type>.

```
Future<void> myVoidFuture() {}

Future<bool> myReturnFuture() {}
```

### <u>Using a Future</u>

There are two ways to execute a Future:

- Using Then/CatchError
- Using Async Await

Future events are usually network request (http) or I/O operations. But here we will simulate/fake
a network request by using Future.delayed() which will help us to understand the concept without
actually calling an API. Also we cannot call http request in dartpad.

**NOTE**: Future.delayed() takes two arguments. First Duration() which will specify how much time
it will take to execute and second argument is a function that should execute after that time
duration is over.

### <u>Using Then / CatchError</u>

```
void getData() {
  // Simulate Network request to get the userid
  Future.delayed(Duration(seconds: 3), () {
                return (1);

  // return Future.error('Network Error');
            }).then(result){
  // Simulate Network request to get the username from id
  Future.delayed(Duration(seconds: 2), () {
              print(result);
              print('Alberto');
    });
  }).catchError((error) {
      print(error);
  });
  print('Random line of code');
}
```

## 2. <u>Async Await Concept</u>
Then/CatchError definitely works well, but there's also an alternative syntax that many find to be much reable
and also to avoid multiple chain of then/catch. We use the **async** keyword after our function name and add the
**await** keyword before anything that needs some time to run, like our get request. Now everything after it will
be ran when a value has been

```
Future functionName() async {
  final variableName = await Future.delayed(Duration(seconds: 2), () {
    return 'value';
  });
  print(variableName);
}
```

**Note**: For error handling we can just wrap the whole code into a try/catch block
