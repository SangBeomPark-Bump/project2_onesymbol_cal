import 'package:flutter/material.dart';

class MulPage extends StatefulWidget {
  const MulPage({super.key});

  @override
  State<MulPage> createState() => _MulPageState();
}

class _MulPageState extends State<MulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('multiplication'),
      ),
    );
  }
}