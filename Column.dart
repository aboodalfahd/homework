import 'package:flutter/material.dart';
import 'main.dart';
import 'Text.dart';
import 'Calculator.dart';
import 'Container.dart';
import 'Information.dart';
import 'Curved line.dart';
import 'Flex.dart';
import 'SSMD.dart';
import 'Sum.dart';

class lect2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("myapps"),
        backgroundColor: Colors.deepOrangeAccent,
        actions: [
          IconButton(
            icon: Icon(Icons.medical_services),
            onPressed: () => {},
          ),
        ],
      ),
      drawer: LDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.red,
              child: const Text('Item1: flex=1'),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
              child: const Text('Item2: flex=2'),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blue,
              child: const Text('Item3, flex=3'),
            ),
          ),
        ],
      ),
    );
  }
}
