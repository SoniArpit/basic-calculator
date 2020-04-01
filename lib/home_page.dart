import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  void doAdd() {
    setState(() {
      sum = int.parse(t1.text) + int.parse(t2.text);
    });
  }

  void doSub() {
    setState(() {
      sum = int.parse(t1.text) - int.parse(t2.text);
    });
  }

  void doMul() {
    setState(() {
      sum = int.parse(t1.text) * int.parse(t2.text);
    });
  }

  void doDiv() {
    setState(() {
      sum = int.parse(t1.text) ~/ int.parse(t2.text);
    });
  }

  void doClr() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator App"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Output: $sum",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  controller: t1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: "Enter number 1"),
                ),
                TextField(
                  controller: t2,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: "Enter number 2"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    MaterialButton(
                      color: Colors.red,
                      onPressed: doAdd,
                      child: Text(
                        "+",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    MaterialButton(
                      color: Colors.red,
                      onPressed: doSub,
                      child: Text(
                        "-",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    MaterialButton(
                      color: Colors.red,
                      onPressed: doMul,
                      child: Text(
                        "*",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    MaterialButton(
                      color: Colors.red,
                      onPressed: doDiv,
                      child: Text(
                        "/",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MaterialButton(
                      color: Colors.red,
                      onPressed: doClr,
                      child: Text(
                        "Clear",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
