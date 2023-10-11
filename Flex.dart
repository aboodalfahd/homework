import 'package:flutter/material.dart';
import 'main.dart';
import 'Text.dart';
import 'Calculator.dart';
import 'Container.dart';
import 'Information.dart';
import 'Curved line.dart';
import 'Column.dart';
import 'SSMD.dart';
import 'Sum.dart';

class wor3 extends StatelessWidget {
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
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.green,
              height: 50,
              child: Center(child: Text("Container Top")),
            ),
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 96, 54, 3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.green,
                            height: 100,
                            child: Center(child: Text(" flex: 2")),
                          ),
                        ),
                        Container(
                          color: Colors.blue,
                          height: 100,
                          width: 100,
                          child: Center(child: Text("Container")),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.green,
                            height: 100,
                            child: Center(child: Text(" flex: 1")),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.green,
                            height: 100,
                            child: Center(child: Text("flex: 2")),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            color: Color.fromARGB(255, 152, 4, 4),
                            height: 100,
                            child: Center(child: Text("flex: 3")),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Color.fromARGB(255, 121, 195, 123),
                            height: 100,
                            child: Center(child: Text(" flex: 1")),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 106, 76, 175),
              height: 50,
              child: Center(child: Text("Container Bottom")),
            ),
          ],
        ),
      ),
    );
  }
}
