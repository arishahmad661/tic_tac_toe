import 'package:flutter/material.dart';
import 'homepage.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
    theme: ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 6, 52, 70)),
    home:HomePage(),
));
}
