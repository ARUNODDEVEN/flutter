import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app"),
      ),
      body: Center(
        child: Container(
          child: Text("WELCOME TO DAY"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
