import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Lista de Checkbox'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var listState = [
    false,
    false,
    true,
    false,
    true,
    false
  ];

  void changeTileState(int index) {
    setState(() {
      listState[index] = !listState[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    // horizontal).
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: listState.length,
          itemBuilder: (BuildContext context, int index) {
            return CheckboxListTile(
              title: Text("Uma tile da lista dus guri :)"),
              value: listState[index],
              onChanged: (b) {
                changeTileState(index);
              },
            );
          },
      ),
    );
  }
}