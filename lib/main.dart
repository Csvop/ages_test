import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Map<int, Color> colorCodes = {
      50: Colors.amber.shade50,
      100: Colors.amber.shade100,
      200: Colors.amber.shade200,
      300: Colors.amber.shade300,
      400: Colors.amber.shade400,
      500: Colors.amber.shade500,
      600: Colors.amber.shade600,
      700: Colors.amber.shade700,
      800: Colors.amber.shade800,
      900: Colors.amber.shade900,
    };

    final MaterialColor themeColor = MaterialColor(0xFFFFECB3, colorCodes);

    return MaterialApp(
      title: 'EmoKids',
      theme: ThemeData(
        primarySwatch: themeColor,
      ),
      home: MyHomePage(title: 'Cardápio da emoções'),
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
  var goodEmotions = ["Euforia","Felicidade","Excitação","Felicidade","Excitação"];
  var badEmotions = ["Raiva","Estresse","Briga","Estresse","Briga"];
  var depressionEmotions = ["Desânimo","Decepção","Tristeza","Decepção","Tristeza"];

  void changeTileState(int index) {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    // horizontal).
    return Scaffold(
        drawer: Text("Olá, Mundo!"),
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
                    itemCount: goodEmotions.length,
                    separatorBuilder: (context, index) => SizedBox(width: 10),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                          children: [
                            ButtonTheme(
                              minWidth: 100,
                              height: 80,
                              child: MaterialButton(
                                onPressed: () {

                                },
                                color: Colors.yellow,
                                textColor: Colors.white,
                                shape: CircleBorder(),
                              ),
                            ),
                            Text(goodEmotions[index])
                          ]
                      );
                    })
            ),
            Container(
                height: 100,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: badEmotions.length,
                    separatorBuilder: (context, index) => SizedBox(width: 10),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                          children: [
                            ButtonTheme(
                              minWidth: 100,
                              height: 80,
                              child: MaterialButton(
                                onPressed: () {},
                                color: Colors.redAccent,
                                textColor: Colors.white,
                                shape: CircleBorder(),
                              ),
                            ),
                            Text(badEmotions[index])
                          ]
                      );
                    })
            ),
            Container(
                height: 100,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: badEmotions.length,
                    separatorBuilder: (context, index) => SizedBox(width: 10),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                          children: [
                            ButtonTheme(
                              minWidth: 100,
                              height: 80,
                                child: MaterialButton(
                                  onPressed: () {},
                                  color: Colors.blue,
                                  textColor: Colors.white,
                                  shape: CircleBorder(),
                                ),
                            ),
                            Text(badEmotions[index])
                          ]
                      );
                    })
            ),
          ],
        ),
    );
  }
}
