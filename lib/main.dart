import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EmoKids',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Emo Kids'),
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
  var listState = [false, false, true, false, true, false];

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
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 10),
                height: 100,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 22,
                    separatorBuilder: (context, index) => SizedBox(width: 10),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                          children: [
                            ButtonTheme(
                              minWidth: 100,
                              height: 50,
                              child: MaterialButton(
                                onPressed: () {},
                                color: Colors.yellow,
                                textColor: Colors.white,

                                child: Icon(
                                  Icons.agriculture,
                                  size: 35,
                                ),
                                shape: CircleBorder(),
                              ),
                            ),
                            Text("Sentimento")
                          ]
                      );
                    })
            ),
            Container(
                height: 100,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 22,
                    separatorBuilder: (context, index) => SizedBox(width: 10),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                          children: [
                            ButtonTheme(
                              minWidth: 100,
                              height: 50,
                              child: MaterialButton(
                                onPressed: () {},
                                color: Colors.yellow,
                                textColor: Colors.white,

                                child: Icon(
                                  Icons.agriculture,
                                  size: 35,
                                ),
                                shape: CircleBorder(),
                              ),
                            ),
                            Text("Sentimento")
                          ]
                      );
                    })
            ),
            Container(
                height: 100,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 22,
                    separatorBuilder: (context, index) => SizedBox(width: 10),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                          children: [
                            ButtonTheme(
                              minWidth: 100,
                              height: 50,
                                child: MaterialButton(
                                  onPressed: () {},
                                  color: Colors.yellow,
                                  textColor: Colors.white,

                                  child: Icon(
                                    Icons.agriculture,
                                    size: 35,
                                  ),
                                  shape: CircleBorder(),
                                ),
                            ),
                            Text("Sentimento")
                          ]
                      );
                    })
            ),
          ],
        ),
    );
  }
}
