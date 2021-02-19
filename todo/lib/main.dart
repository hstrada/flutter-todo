import 'package:flutter/material.dart';

import 'models/item.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  var items = new List<Item>();
  HomePage() {
    items = [];
    items.add(Item(title: "Item 1", done: false));
    items.add(Item(title: "Item 2", done: true));
    items.add(Item(title: "Item 3", done: false));
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // scaffold é o esqueleto da nossa página
    return Scaffold(
      appBar: AppBar(
        // leading: Text("-"),
        title: Text("ToDo"),
        // actions: <Widget>[
        //   Icon(Icons.plus_one),
        // ],
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        // como desenha os itens na tela
        itemBuilder: (BuildContext ctx, int index) {
          return Text(widget.items[index].title);
        },
      ),
    );
  }
}
