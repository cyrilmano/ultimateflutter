import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String name = 'Cyril';
int number = 1;
double abcde = 1.0;
List myList = ['list 1', 'list2'];
Map<String, dynamic> myMap = {'String': 'String', 'Number': 444};

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("MyHomePage build called. Counter: $_counter");
    return Scaffold(
      backgroundColor: Colors.black, // Explicit background
      appBar: AppBar(
        backgroundColor: Colors.green, // Solid color for testing
        title: Text(widget.title, style: const TextStyle(color: Colors.white)),
      ),
      body: Container(
        //padding: EdgeInsets.all(50.0),
        child: Stack(
          children: [
            Image.asset(
              'assets/images/ultimateflutterbg.jpg',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(
              //height: 100,
              //width: 100,
              child: Center(
                child: Text(
                  'Flutter',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
            ),
          ], //
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
