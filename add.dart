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
import 'Flex.dart';

class add extends StatefulWidget {
  State createState() => _add();
}

class _add extends State<add> {
  List<String> l = ["ib", "ha", "ya", "OH YEAH"];
  Widget build(BuildContext context) {
    TextEditingController con = new TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: Text("app"),
          backgroundColor: Color.fromARGB(255, 118, 218, 255),
          actions: [
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () => {},
            ),
          ],
        ),
        drawer: LDrawer(),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: con,
                  onSubmitted: (v) => setState(() {
                    l.add(v);
                  }),
                  maxLines: 2,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: "input string",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                    itemCount: l.length,
                    itemBuilder: (BuildContext ctx, int i) {
                      return Card(
                        elevation: 9,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        shadowColor: Color.fromARGB(255, 166, 185, 220),
                        child: ListTile(
                          leading: Icon(Icons.update),
                          trailing: IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              setState(() {
                                l.removeAt(i);
                              });
                            },
                          ),
                          title: Text(l[i]),
                        ),
                      );
                    }),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.white,
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          l.add(con.text);
                        });
                      },
                      child: Text("add")),
                ),
                Container(
                  color: Colors.white,
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          for (int i = 0; i < l.length; i++) l.removeAt(i);
                        });
                      },
                      child: Text("delete")),
                ),
              ],
            )
          ],
        ));
  }
}
