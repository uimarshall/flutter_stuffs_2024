# flutter-stuffs-2024

This repository is for developing flutter projects from 2024

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
