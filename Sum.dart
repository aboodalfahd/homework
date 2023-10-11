import 'package:flutter/material.dart';
import 'main.dart';
import 'Text.dart';
import 'Calculator.dart';
import 'Container.dart';
import 'Information.dart';
import 'Curved line.dart';
import 'Column.dart';
import 'Flex.dart';
import 'SSMD.dart';

class worccoz extends StatelessWidget {
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
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textEditingController = TextEditingController();
  int hr = 0;

  void _addToSum() {
    setState(() {
      hr += int.parse(_textEditingController.text.length.toString());
    });
  }

  void _clearSum() {
    setState(() {
      hr = 0;
      _textEditingController.clear();
    });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('text fild'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _textEditingController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'enter num',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _addToSum,
              child: Text('sum'),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: _clearSum,
              child: Text('clear'),
            ),
            SizedBox(height: 16),
            Text(
              'sum: $hr',
              style: TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}
