import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final String foo = 'This is test string foo';
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(foo),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String foo;
  MyHomePage(this.foo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(foo),
      ),
      body: Widget1(foo: foo),
    );
  }
}

class Widget1 extends StatelessWidget {
  final String foo;
  const Widget1({Key? key, required this.foo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widget2(foo: foo);
  }
}

class Widget2 extends StatelessWidget {
  final String foo;
  const Widget2({Key? key, required this.foo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widget3(foo: foo);
  }
}

class Widget3 extends StatelessWidget {
  final String foo;
  const Widget3({Key? key, required this.foo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(foo),
    );
  }
}
