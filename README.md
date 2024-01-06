# flutter-stuffs-2024

This repository is for developing flutter projects from 2024

## General Procedure for Developing an app

Things of what and how you want to implement a feature before writing the code.

> The thought process should be divided into two:

1. The UIUX
2. What type of data a particular UI will interact with.

> For the UI, ask the following questions:
>
> Ask these questions to break the layout down to its basic elements.

1. Can you identify the rows and columns?
2. Does the layout include a grid?
3. Are there overlapping elements?
4. Does the UI need tabs?
5. What do you need to align, pad, or border?

> For the data to be stored in the UI

1. Ask what type of data is it? Is it an objects, lists, strings etc. This will enable you to know how to model the data

## Running the app

The app runs in the `lib/main.dart` file.

> The function that runs the app:

```
void main() {
  runApp(const MyApp());
}
```

A flutter app is a combination of many `Widgets` or components. Each Widget has arguments or class properties such as `home` in the below:

```
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

```

## THE 2 MOST IMPORTANT WIDGETS FOR BUILDING AN APP IN FLUTTER

The two most important `Widgets` are:

> `The MaterialApp()` - This comes bundled with material design functionalities.
>
> `The Scaffold()`

## MAJOR DIVISIONS OF AN APP

Any app is usually divided into:

> The Header
>
> The Main Body
>
> The Footer
>
> In Flutter, we usually have the Root Widget that houses other Widgets:

Most times the `MaterialApp`` is the root. It could have the following in its subtree:

> 1. The `AppBar Widget` for the header.
>
> 2. The `Container Widget` for the main body
>
> 3. The `BottomNavigationBar` for the footer.

## IT'S ALL ABOUT WIDGETS IN FLUTTER

A `Widget` is used to create any element that we want in Flutter as we used`tags` in HTML.

Examples: we have The `Text Widget` for creating texts, `Button Widget` for creating Buttons, `Row & Column Widget` for layout. All the widgets come bundled with properties and methods since the `widgets` are built as `classes` and we only call those classes and make use of their properties and methods.

e.g. A Text Widget could have the following properties:

> color
> textAlign
> style (bold)

> All Widgets in flutter are `classes` and they have behaviors which are the properties of these classes. the value assign to these classes determines how those properties behaves or appear on the screen.

## HOW TO GET THE WIDGETS

Anytime you want to implement a widget or tag you're not use to, just type the widget name in google `e.g: Image Widget in flutter`.

## The `home` property of the MaterialApp Widget

The `home` property of the MaterialApp() widget tells us which widget will be loaded to the home screen once the application loads. This is similar to the home page or landing page.

The MaterialApp() widget enable us to use the features of the Google Material design. It's a wrapper for our application. For it to be the wrapper for our application it be returned in the root of the of the application or the root widget that will be passed to the `runApp()` function of the `void main()`.

## The Scaffold() Widget

> The Scaffold Widget helps us to implement a basic layout for our application; such as Navbar(AppBar), Main body and Footer(BottomNavigation).

## Stateless and Stateful Widgets

> Stateless

In Stateless widget, the state of the widget cannot change overtime, examples are the properties of the widgets and the data, properties are things like background color, the state of the data could be upvotes, likes, dislikes etc. The Stateless widget can contain data, but those data cannot change once the widget is initialized.

> Stateful

The change can state overtime, once the data stored in the widget changes or the properties of the widget(class) changes programmatically. example could be changing the background color of fontStyle based on some criteria due to some click actions etc.

## Container Widget

> The container widget is used as a wrap around other widgets.
> Container is a widget class that allows you to customize its child widget. Use a Container when you want to add `padding`, `margins`, `borders`, or `background color`, to name some of its capabilities.

For example, a Text widget can be placed in a Container to add margins.

### Used Case for a Container

Use a `Container Widget` for any of the following:

> For a widget or element that needs Styling, e.g. background color or shape(circle) or size constrain, then wrap that widget in a container.

### What a Container Does

It helps you `Compose(create)`, `style` and `position` a widget.

> It creates the child widget first using it's `child` property of a class and then applies styling and constraints using other properties of the container class.

Example below:

```
class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Text('Container Loading...'),
    );
  }
}
```

## Some things to note about the Container Widget

> If you don't wrap the Container in another widget such as the `Scaffold`(map Container as value to the body property of the Scaffold), it will take the full screen of the device.

## Stateful Widgets

In a `Stateful` widget, The widget changes its state, once the widget changes its state, it is necessary for the UI to reload in order to effect the changes.

The change of state of the widget, could be change in background color due to some clicks, or change in the value of data stored in the widget.

> This is an example of a stateful widget: a state object separate from the widget tree that can change over time and be shared across multiple widgets.

> For now, you can think of them as widgets that can change their appearance in response to events triggered by user interactions or when they receive data.

> For example, a stateful widget might display a list of items that the user can remove from the screen. When the user removes an item, the widget rebuilds itself and the list of items is updated.

```

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  // This is the state that will be created by this widget at runtime.
  State<MyWidget> createState() => _MyWidgetState();
}

// So `_MyWidgetState() is the state class for`MyWidget`, and it overrides the createState() method to return a _MyWidgetState() object (defined below).

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

```

> `_MyWidgetState()` is the private State class for a StatefulWidget. It holds the mutable state for that widget. This class will be passed as a parameter to the StatefulWidget.createState method, and from that point, the framework will refer to the state class whenever it needs to read or update the state of the widget.

`_MyWidgetState()` instantiate the state class `_MyWidgetState` object (class) so created above

> It builds a state object for the `MyWidget`` that we just created, the state object will be passed to the framework(flutter), and the framework calls the build() method of this state object whenever it needs to change the widget's appearance.

> So we have two different classes, the actual widget(`MyWidget`) which creates a state object`(_MyWidgetState)` that is separate from the widget tree and can change over time and be shared across multiple widgets.

> The state object(\_MyWidgetState) is created by the widget(MyWidget) at runtime and passed to the framework, and the framework calls the build() method of this state object whenever it needs to change the widget's appearance.

### So we have 2 classes

1. The Actual Widget which creates a state object
2. The state object which we can use to store data or define data.

> In the future when we use the MyWidget widget, it will return the widget tree defined in the build method of the state object.

[Creating responsive and adaptive apps](https://docs.flutter.dev/ui/layout/responsive/adaptive-responsive)

## SOME RESPONSIVE WIDGETS IN FLUTTER

> MediaQuery
> LayoutBuilder
> OrientationBuilder
> SafeArea
> AspectRatio
> Flexible
> Expanded
> FractionalSizedBox

### Media Query

> Includes the media query data
> Returns info about the app's window such as the `screenWidth`, `screenHeight` and `orientation`.

```
double screenWidth = MediaQuery.of(context).size.width
double screenHeight = MediaQuery.of(context).size.height

```

Based on the screen sizes and orientation, we can control the responsive UI.

## HOW TO USE MEDIA QUERY

`Examples`

> If you want to cover half of the screen width or height:

```
double screenWidth = MediaQuery.of(context).size.width/2
double screenHeight = MediaQuery.of(context).size.height/2

```

> If you want to cover 40% of the screen width

```
double screenWidth = MediaQuery.of(context).size.width * 0.4
```

### SafeArea

Be mindful of widgets such as status bar, notches, navigation bar etc.

It is basically a padding widget, would add padding around the app, as required.

The SafeArea widget in Flutter is used to ensure that its child is not blocked by system-level UI elements such as the `status bar`, `notch`, and `bottom navigation bar`. It provides padding to its child to keep it within the safe area of the screen.

> Screens are not often rectangular, sometimes they have rounded corners, notch at the status or nav bar and impair the text, to make the text clearly seen, we use safe area.
>
> Sometimes, some Widgets have default padding that does not make our UI looks great. We use SafeArea to make it looks well and override the default padding.

```

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SafeArea Example'),
        ),
        body: SafeArea(
          child: Center(
            child: Text('This text is within the safe area'),
          ),
        ),
      ),
    );
  }
}

```

### FractionallySizedBox

`FractionallySizedBox` is a widget in Flutter that sizes its child to a fraction of the available space. It is commonly used to create responsive layouts in Flutter applications.

```
FractionallySizedBox(
  widthFactor: 0.5, // takes up 50% of the available width
  heightFactor: 0.3, // takes up 30% of the available height
  child: ElevatedButton(
    child: Text('Login'),
  ),
)

```

Use `FractionallySizedBox` if you want the following:

> Relative sizes (e.g. 70% and not 300px) - takes 70% of the app's width, or you can say, the margin should take 70% of a widget.
>
> Wrap the child you want sized inside a `FractionallySizedBox`.

### Expanded & Flexible Widget

> The Expanded widget in Flutter is used to expand a child widget to fill the available space within its parent widget along the main axis. It is commonly used within a Row, Column, or Flex widget to specify how much space a child widget should occupy within the available space.

```
Row(
  children: <Widget>[
    Expanded(
      child: Container(
        color: Colors.red,
        height: 100,
      ),
    ),
    Expanded(
      child: Container(
        color: Colors.blue,
        height: 100,
      ),
    ),
    Expanded(
      child: Container(
        color: Colors.green,
        height: 100,
      ),
    ),
  ],
)

```

> This code creates a Row with three containers, each wrapped in an Expanded widget. The Expanded widget allows each container to occupy an equal amount of space within the Row

### Flexible Widget

> Flexible does not require the child to fill the available space of the parent container.

> The Flexible widget in Flutter is used to create a flexible space in a Flex container. It allows its child to flexibly expand to fill the available space in the main axis of the Flex container.

```
Row(
  children: <Widget>[
    Container(
      color: Colors.blue,
      height: 100,
      width: 100,
    ),
    Flexible(
      flex: 2,
      child: Container(
        color: Colors.red,
        height: 100,
      ),
    ),
    Container(
      color: Colors.green,
      height: 100,
      width: 100,
    ),
  ],
)

```

## Handling Portrait and Landscape Orientations

> Orientation builder
>
> Change the UI based on the orientation of the parent widget.

> OrientationBuilder is a widget in Flutter that allows you to build a widget tree based on the orientation of the device. This means that you can customize the UI based on whether the device is in portrait or landscape mode.

```
OrientationBuilder(
  builder: (BuildContext context, Orientation orientation) {
    // Return a widget tree based on the orientation
    return Container(
      child: Text(
        'Device is in $orientation mode',
        style: TextStyle(fontSize: 20),
      ),
    );
  },
)


// Example 2

OrientationBuilder(
  builder: (context, orientation) {
    return GridView.count(
      // Create a grid with 2 cols in portrait mode
      // or 3 cols in landscape mode
      crossAxisCount: orientation == Orientation.portrait ? 2:3,
    );
  },
)


```
