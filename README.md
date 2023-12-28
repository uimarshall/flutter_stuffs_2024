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
