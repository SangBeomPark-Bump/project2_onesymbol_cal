import 'package:flutter/material.dart';

class DivPage extends StatefulWidget {
  const DivPage({super.key});

  @override
  State<DivPage> createState() => _DivPageState();
}

class _DivPageState extends State<DivPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('division'),
      ),
    );
  }
}