import 'package:flutter/material.dart';
import 'package:projectcambista/src/pages/HomePage.dart';
import 'package:projectcambista/src/pages/components/movil/LoginPageMovil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomePage(),
        'login':(BuildContext context) => LoginPageMovil()
      },
    );
  }
}
