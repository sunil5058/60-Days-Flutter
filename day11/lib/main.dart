import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FlutterApp",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue.shade50,
        child: Column( // optional: center vertically
          children: [
            Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 2, color: Colors.black),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // center icons horizontally
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(width: 20), // space between icons
                  Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 40,
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