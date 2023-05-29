import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App()); // root Widget
}

// StatelessWidget: core Widget of the flutter.
// App Widget is the root of the application. It is starting point of the application.
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    // material -> Google's design system
    // cupertino -> Apple's design system (ios)
    // choose the base UI settings
    // return CupertinoApp()`;
    // return const MaterialApp();

    // scaffold: structure of the screen
    // navigation bar, bottom bar, tob bar, center of screen ...
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // actions: [],
          // elevation: 99, // shadow
          // centerTitle: true,
          title: Text('Hello flutter!'),
        ),
        body: Center(
          child: Text('Hello world!'),
        ),
      ),
    );
  }
}
