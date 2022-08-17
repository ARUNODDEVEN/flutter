import 'package:flutter/material.dart';

void main() {
  runApp(new myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.light,
        accentColor: Colors.orange,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String mytext = "Hello World";

  void _changetext() {
    setState(() {
      if (mytext.startsWith("H")) {
        mytext = "Welcome To My App";
      } else {
        mytext = "Hello";
      }
    });
  }

  Widget _bodywidget() {
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              mytext,
              style: new TextStyle(
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ODDEVEN"),
      ),
      body: _bodywidget(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: _changetext,
      ),
    );
  }
}
