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
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 11, 151, 74),
        ),
      ),

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final List<String> items = List<String>.generate(
    30,
    (index) => 'Item ${index + 1}',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter6'),
        backgroundColor: const Color.fromARGB(255, 163, 255, 250),
      ),

      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: 30,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 1.0
        ), //3item/colunm
        
        itemBuilder: (BuildContext context, int idx) {
          return Container(
            decoration: BoxDecoration(
            color: Colors.lightGreen[100 + (idx % 8) * 100],
            borderRadius: BorderRadius.circular(8.0),
            ),
          child: Text(
            items[idx],
            style: const TextStyle(fontSize: 18, color: Colors.black87),
          ),
          );
        },
      ),
    );
  }
}
