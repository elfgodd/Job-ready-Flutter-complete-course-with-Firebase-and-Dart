## 1. <u>Deep Dive into TextField Widget</u>

### <u>TEXTFIELD</u>

Handling User Input

### <u>TextField Widget</u>

TextField in Flutter is the most commonly used **widget** that allows users to collect inputs from the keyboard into an app

Following is a sample code snippet to show TextField in your Flutter application

```
TextField(
  decoration: InputDecoration(
    labelText: 'Name',
    border: OutlineInputBorder()
      ),
  ),
)
```

## 2. <u>Adding a TextEditing Controller</u>

### <u>Retrieve the value of a TextField</u>

**Using Controller method:**

1. Create a TextEditingController.
2. Attach the TextEditingController to a TextField using controller property.
3. Retrieve the value of the TextField by using the **.text** method provided by the
   TextEditingController.

`TextEditingController controllerName = TextEditingController();`

`controllerName.text; // It will output the value`

## 3. <u>Validating User Input</u>

### <u>Form Widget</u>

Involving a Form widget in your app simply makes it easier to validate, reset, and save multiple input fields at once.
And we use the widget TextFormField inside Form instead of just TextField

### <u>Create a Form</u>

```
body: Form(
  child: Column(
    mainAxisAligment: MainAxisAlignment.center,
    children: [
      Container(
        margin: EdgeInSets.all(30),
        child: TextFormField(
          decoration: InputDecoration(
            labelText: 'Name',
            border: OutlineInputBorder()
          ),
          controller: nameController,
        ),
      ),
      ElevatedButton(onPressed: () {
        print(nameController.text);
      }, child: Text('Print'))
    ],
  ),
)
```

### <u>Form Validation</u>

Validating forms is a common practice in all digital interactions.
To validate a form in a flutter, we need to implement mainly three steps.

**Step 1**: Use the Form widget with a global key.  
**Step 2**: Use TextFormField to give the input field with validator property.  
**Step 3**: Create a button to validate form fields and display validation erros.

```
class HomePage extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  <!-- .......... -->

  body: Form(
    key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: []
  <!-- .......... -->
        )
  )
}
```

Now we have to use **validator()** function in the TextFormField to validate the input properties. If
the user gives the wrong input, the validator function returns a string that contains an **error message;**
otherwisem the validator function return **null**.

```
child: TextFormField(
  validator: (value) {
    if(value.isEmpty) {
      return 'Field is required'
    }
    return null;
  },
)

```

ElevatedButton(onPressed: () {
if(\_formKey.currentState.validate()) {
print('Form Submitted Successfully');
}
}, child: Text('Print'))

```

```

### <u>Saving a Form</u>

While building app, We probably want to save the form data to do something with that.
In this step we will just create some saving rules for the fields and then when we call the
onSaved() method, it will execute those rules.

```
child: TextFormField(
  onSaved: (value) {
    print('$value is Saved');
  },
  validator: (value) {
    if(value.isEmpty) {
        <!-- .......... -->
    }
  }
)
```

```
ElevatedButton(onPressed: () {
  if(_formKey.currentState.validate()) {
    _formKey.currentState.save();
    print('Form Submitted Successfully');
  }
}, child: Text('Print))
```

Note: Here we have just print value in onSaved() but it can be used to assign the value to a variable, etc.

## 4. <u>Decoration and other properties</u>

Till now we have learn how to use features of TextField but now we will make it look good as well.
For decorating the TextField, we use the **decoration** property which takes an InputDecoration.

- **Use the hint label properties to give information to the user**

```
decoration: InputDecoration(
  labelText: "Name",
  hintText: "Write you Full Name",
)
```

- **You can add icons using "icon", "prefixIcon" and "suffixIcon"**

```
decoration: InputDecoration(
  icon: Icon(Icons.email),
  labelText: "Name",
)
```

```
decoration: InputDecoration(
  prefixIcon: Icon(Icons.email),
  labelText: "Name",
)
```

```
decoration: InputDecoration(
  suffixIcon: Icon(Icons.email),
  labelText: "Name",
)
```

- **Use "border" property to add/remove a border to the TextField**

```
decoration: InputDecoration(
  border: OutlineInputBorder()
),
```

```
decoration: InputDecoration(
  border: InputBorder.none
),
```

- **Use "helperText" if you do not want a label but you want a persisting message for the user.**

```
decoration: InputDecoration(
  helperText: "* minimum 5 characters",
  border: OutlineInputBorder()
),
```

### <u>Changing Keyboard Properties for TextFields</u>

The types are:

1. **TextInputType.text** (Normal complete keyboard)
2. **TextInputType.number** (A numerical keyboard)
3. **TextInputType.emailAddress** (Normal keyboard with an "@")
4. **TextInputType.datetime** (Numerical keyboard with a "/" and ":")
5. **TextInputType.multiline** (Optimises for multi-line information)

(Example: keyboardType: TextInputType.number)

### <u>Obscuring Text</u>

To hide text in a TextField, set obscureText to true, We use it mostly in password field.
`TextField(obscureText: true,),`

### <u>Controlling max characters</u>

TextFields can control the maximum number of characters written inside it.
`TextField(maxLength: 5,),`

## 5. <u>Alert Dialog Widget</u>

### <u>Alert Dialog</u>

An alert dialog is a useful feature that notifies the user with important information to make a decision
or provide the ability to choose a specific action.

Key Properties of Alert Dialog Box:

- **actions**: The set of actions that are displayed at the bottom of the dialog. Typically Buttons.
- **title**: The title of the dialog is displayed in a large font at the top of the dialog.
- **content**: This gives a message/description about the title which you have provided to the Alert Dialog Box.
- **backgrounColor**: It provides the background color to the widget which is being used in.
- **elevation**: Elevation provided height to the widget, It gives a default shadow to the widget.

To show an alert, you must have to call **showDialog()** function, which contains the context and
**itemBuilder** function.

```
showDialog(context: context, builder: (context) => AlertDialog(
  title: ,
  content: ,
))
```

### <u>Displaying Alert Dialog</u>

```
ElevatedButton(onPressed: () {
  if(_formKey.currentState.validate()) {
    _formKey.currentState.save();
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text('Thank you'),
      content: Text('Form Submitted Successfully'),
      actions: [
        TextButton(onPressed: () {
          Navigator.pop(context);
        }, child: Text('Okay'))
      ],
    ));
  }
}, child: Text('Submit'))
```

**Note**: You can change backgroundColor, Shape, Padding etc properties as well.
