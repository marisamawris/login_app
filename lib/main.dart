import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'home_screen.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  //Route aplikasi
  final routes = <String, WidgetBuilder>{
    LoginScreen.tag: (context) => LoginScreen(),
    HomeScreen.tag: (context) => HomeScreen(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'loginform',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      //form yang akan di panggil pertama kali di main.dart
      home: LoginScreen(),
      routes: routes,
    );
  }
}