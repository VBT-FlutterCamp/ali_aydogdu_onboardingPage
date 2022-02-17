import 'package:flutter/material.dart';
import 'package:splash_example/onboard/onboarding.dart';

void main() {
  runApp(splashPage());
}

class splashPage extends StatefulWidget {
  const splashPage({Key? key}) : super(key: key);

  @override
  _splashPageState createState() => _splashPageState();
}

class _splashPageState extends State<splashPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnBoard(),
    );
  }
}
