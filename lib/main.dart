import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: '',
      ),
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

  get wtController => null;

  get ftController => null;

  get inController => null;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          'your BMI',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            'BMI',
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
          ),
          TextField(
            controller: wtController,
            decoration: InputDecoration(
              label: const Text('Masukkan Tinggi Badan (cm)'),
              prefixIcon: Icon(Icons.line_weight),
            ),
            keyboardType: TextInputType.number,
          ),
          TextField(
            controller: ftController,
            decoration: InputDecoration(
              label: const Text('Input Berat Badan (kg)'),
              prefixIcon: Icon(Icons.height),
            ),
            keyboardType: TextInputType.number,
          ),
          TextField(
            controller: inController,
            decoration: InputDecoration(
              label: const Text('Masukkan Umur (thn)'),
              prefixIcon: Icon(Icons.height),
            ),
            keyboardType: TextInputType.number,
          ),
        ],
      ),
    );
  }
}
