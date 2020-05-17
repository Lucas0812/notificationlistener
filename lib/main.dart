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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          print('notification');
          return true;
        },
        child: SingleChildScrollView(
          child: Column(
            children: List.filled(5, null)
                .map(
                  (elem) => Container(
                    margin: EdgeInsets.all(20),
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1.5),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(4.0)),
                    ),
                    child: Center(
                      child: Text('Teste'),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      )),
    );
  }
}
