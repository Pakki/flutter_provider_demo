import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './foo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Foo>(
      create: (context) => Foo(),
      child: MaterialApp(
        title: 'Provider demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.watch<Foo>().getFoo),
      ),
      body: Widget1(),
    );
  }
}

class Widget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Widget2();
  }
}

class Widget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Widget3();
  }
}

class Widget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String foo = context.watch<Foo>().getFoo;
    return Column(
      children: [
        Center(
          child: Text(foo),
        ),
        MyTextField(),
      ],
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => context.read<Foo>().changeString(value),
    );
  }
}
