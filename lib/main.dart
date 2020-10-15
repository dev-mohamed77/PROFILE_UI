import 'package:Flutter_UI/screen/profile3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FlutterUi());
}

class FlutterUi extends StatefulWidget {
  @override
  _FlutterUiState createState() => _FlutterUiState();
}

class _FlutterUiState extends State<FlutterUi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile3(),
    );
  }
}