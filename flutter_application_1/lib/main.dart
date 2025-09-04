import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(232, 4, 132, 245), // für appBar
        ),
        // primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color.fromARGB(
          255,
          84,
          83,
          83,
        ), //     für body
      ),
      home: const MyHomePage(title: 'Counter App'),
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
  void plusCounter() {
    setState(() {
      _counter++;
    });
  }

  void minusCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title), // wird title von my homepage rein gegeben
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'click the on button',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '$_counter', // counter 0 bis counter ++
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium, // aus material Theme kriegt er style textTheme --headlineMedium
            ),
            ElevatedButton(onPressed: plusCounter, child: const Text('Next')),
          ],
        ),
      ),
    );
  }
}
