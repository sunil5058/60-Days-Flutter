import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My First Layout")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 80,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  "Header",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Container(
              width: 200,
              height: 80,
              color: Colors.green,
              child: const Center(
                child: Text(
                  "Content",
                  style: TextStyle(
                    color: Colors.white,
                   fontSize: 20,
                   fontWeight: FontWeight.w800
                   ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Container(
              width: 200,
              height: 80,
              color: Colors.orange,
              child: const Center(
                child: Text(
                  "Footer",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
