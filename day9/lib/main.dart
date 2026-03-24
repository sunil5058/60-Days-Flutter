import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Students',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var students = [
      'Aarav Sharma',
      'Sita Thapa',
      'Rohan Adhikari',
      'Anjali Karki',
      'Bibek Rai',
      'Nisha Gurung',
      'Kiran Shrestha',
      'Pooja Bhandari',
      'Suman KC',
      'Prakash Dahal',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Student List'), centerTitle: true),
      body: ListView.separated(
        itemCount: students.length,

        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              students[index],
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          );
        },

        separatorBuilder: (context, index) {
          return const SizedBox(height: 10);
        },
      ),
    );
  }
}
