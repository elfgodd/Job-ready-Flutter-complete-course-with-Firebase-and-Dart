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
