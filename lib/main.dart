import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 19, 18, 18),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 236, 237, 238),
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

  void _divideCounter() {
    setState(() {
      _counter = (_counter / 2).ceil(); // aufrunden
      // _counter = (_counter/2).floor(); // abrunden
      // _counter = (_counter/2).round(); // ab .5 aufrunden, sonst abrunden
    });
  }

  void _doubleCounter() {
    setState(() {
      _counter = _counter * 2;
    });
  }

  void _decrementCounter() {
    setState(() {
      // _counter--;
      _counter -= 2;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _incrementCounter() {
    setState(() {
      // _counter++;
      _counter += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // ElevatedButton(onPressed: _decrementCounter, child: Text("-")),
                ElevatedButton(
                  onPressed: _divideCounter,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 133, 135, 223),
                    padding: const EdgeInsets.all(5),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Icon(Icons.call_split),
                ),

                SizedBox(width: 75),

                ElevatedButton(
                  onPressed: _doubleCounter,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 218, 177, 241),
                    padding: const EdgeInsets.all(5),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Icon(Icons.looks_two),
                ),

                SizedBox(height: 90),
              ],
            ),

            Text(
              'Counter App',
              style: Theme.of(
                context,
              ).textTheme.headlineMedium?.copyWith(fontSize: 30),
            ),
            Text(
              '$_counter',
              // style: Theme.of(context).textTheme.headlineMedium,
              style: Theme.of(
                context,
              ).textTheme.headlineMedium?.copyWith(fontSize: 30),
            ),

            // aus material Theme kriegt er style textTheme --headlineMedium
            SizedBox(height: 30),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // ElevatedButton(onPressed: _decrementCounter, child: Text("-")),
                ElevatedButton(
                  onPressed: _decrementCounter,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 223, 123, 116),
                    padding: const EdgeInsets.all(5),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Icon(Icons.remove),
                ),

                SizedBox(width: 10),

                ElevatedButton(
                  onPressed: _resetCounter,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 245, 206, 77),
                    padding: const EdgeInsets.all(5),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Icon(Icons.refresh),
                ),

                SizedBox(width: 10),

                ElevatedButton(
                  onPressed: _incrementCounter,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 116, 223, 143),
                    padding: const EdgeInsets.all(5),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
