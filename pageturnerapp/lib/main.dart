import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uplabs1/views/page1.dart';
import 'package:uplabs1/views/page2.dart';
import 'package:uplabs1/views/page3.dart';
import 'package:uplabs1/views/pageview.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return const Page1();
  }
}
