import 'package:flutter/material.dart';
import 'main.dart';
import 'Text.dart';
import 'Calculator.dart';
import 'Information.dart';
import 'Curved line.dart';
import 'Column.dart';
import 'Flex.dart';
import 'SSMD.dart';
import 'Sum.dart';

class con extends StatelessWidget {
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
          child: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 26, 118, 154),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Center(child: Text("cr7")),
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 26, 118, 154),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Center(
                child: Image(
              image: AssetImage("images/1.png"),
            )),
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 26, 118, 154),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Center(
                child: Image(
              image: AssetImage("images/2.png"),
            )),
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 26, 118, 154),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Center(
                child: Image(
              image: AssetImage("images/3.png"),
            )),
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 26, 118, 154),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Center(
                child: Image(
              image: AssetImage("images/4.jpg"),
            )),
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 26, 118, 154),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Center(
                child: Image(
              image: AssetImage("assets/6.jpg"),
            )),
          )
        ]),
      )),
    );
  }
}
