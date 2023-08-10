import 'package:flutter/material.dart';

import 'Signup.dart';
import 'home.dart';
import 'login.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
         // home: Homepage(),
         // home: Login(),
        home: Signup(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
