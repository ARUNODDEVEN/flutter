import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/loginpage.dart';

void main(List<String> args) {
  runApp(new myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
    return MaterialApp(
      
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch:Colors.deepPurple
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark

      ),
      initialRoute: "/home",
routes:{
  "/":(context) =>loginpage(),
   "/home":(context) =>homepage(),
  "/login":(context) => loginpage()
  
} ,
      
    );
  }
}
