// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'Text.dart';
import 'Calculator.dart';
import 'Container.dart';
import 'Information.dart';
import 'Curved line.dart';
import 'Column.dart';
import 'Flex.dart';
import 'SSMD.dart';
import 'Sum.dart';
import 'add.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Ab(),
      )));
}

class Ab extends StatelessWidget {
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
    );
  }
}

Padding hare(BuildContext context, tx, icon, nav) {
  return Padding(
    padding: const EdgeInsets.all(1.0),
    child: ListTile(
        tileColor: Colors.cyanAccent,
        title: Text(tx),
        leading: Icon(icon),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => nav,
            ))),
  );
}

class LDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/user.jpg"),
              ),
              accountName: Text("Aboood"),
              accountEmail: Text("Abood.alfahd@gmail.com")),
          Divider(
            color: Colors.blue,
            thickness: 12,
          ),
          hare(context, "home", Icons.call_end, Ab()),
          hare(context, "Text", Icons.call_end, txt()),
          hare(context, "Column", Icons.call_end, lect2()),
          hare(context, "Container", Icons.call_end, con()),
          hare(context, "SSMD", Icons.call_end, TextFiel()),
          hare(context, "Information", Icons.call_end, work1()),
          hare(context, "Curved line", Icons.call_end, work2()),
          hare(context, "Flex", Icons.call_end, wor3()),
          hare(context, "Calculator", Icons.call_end, Calculator()),
          hare(context, "Sum", Icons.call_end, worccoz()),
          hare(context, "add", Icons.call_end, add()),
        ],
      ),
    );
  }
}
