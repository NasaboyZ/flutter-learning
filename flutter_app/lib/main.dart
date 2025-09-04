import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Beispiel-Daten
const String name = 'John Doe';
const int number = 1;
const List<String> myList = ['Hello', 'World'];
const double doubleValue = 1.0;
const Map<String, dynamic> myMap = {'key1': 'value', 'key2': 33};

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Stack(
          children: [
            SizedBox(
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Flutter'),
                  const SizedBox(height: 20),
                  ListTile(
                    tileColor: Colors.red,
                    title: Text('Hello'),
                    leading: Icon(Icons.arrow_back_ios),
                    trailing: Text('Das könnete einTrailing text sein'),
                    onTap: () {
                      print('clieckt on button');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
