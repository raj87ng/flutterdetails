import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final int days = 30;
  final String name = "Rajat";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Items App"),
      ),
      body: Center(
        child: Container(
          child: Text('My First flutter app in ${days} days by ${name}'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
