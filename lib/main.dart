import 'package:flutter/material.dart';

import 'home_screen.dart';

//================================>
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//  const MyApp({key? key}) : super(key: key) ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routename,
      routes: {
        HomeScreen.routename: (context) => HomeScreen(),
        //  "Login" :(context) => LoginScreen() ,
        //  "Login" :(context) => LoginScreen() ,
        //  "Login" :(context) => LoginScreen() ,
      },
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
    );
  }
}
