import 'package:flutter/material.dart';
import 'main.dart';
import 'Calculator.dart';
import 'Container.dart';
import 'Information.dart';
import 'Curved line.dart';
import 'Column.dart';
import 'Flex.dart';
import 'SSMD.dart';
import 'Sum.dart';

class txt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("myapps"),
        backgroundColor: Colors.deepOrangeAccent,
        actions: [
          IconButton(
            icon: Icon(Icons.abc),
            onPressed: () => {},
          ),
        ],
      ),
      drawer: LDrawer(),
      body: Center(
          child: Text(
        "it grup4 ",
        style: TextStyle(backgroundColor: Color.fromARGB(255, 222, 83, 13)),
      )),
    );
  }
}
