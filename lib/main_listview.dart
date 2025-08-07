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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final List<String> myData = List<String>.generate(
    50,
    (i) => 'รายการลิสต์ที่ ${i + 1}',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter6'),

        backgroundColor: Colors.blue,
      ),

      body: ListView.builder(
        itemCount: myData.length, // ใช้ความยาวของลิสต์ข้อมูลของเรา
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: const Icon(Icons.label_important_outline),
            title: Text(myData[index]), // แสดงข้อมูลจากลิสต์
            subtitle: Text('คำอธิบายสำหรับรายการ $index'),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ), // ไอคอนท้าย (ทางเลือก)
            onTap: () {
              print('แตะที่: ${myData[index]} (index $index)');
            },
          );
        },
      ),
    );
  }
}
