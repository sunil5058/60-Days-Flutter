import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Root Widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

// Home Screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: InkWell(
          onTap: () {
            print('Tapped on container');
          },

          onDoubleTap: () {
            print('Double Tapped in the container');
          },

          onLongPress: () {
            print('Long Pressed on the container');
          },

          child: Container(
            width: 200,
            height: 200,
            color: Colors.amber,
            child: Center(
              child: InkWell(
                onTap:(){
                  print('Text Tapped');
                } ,
                onDoubleTap: (){
                  print('Text Doubled tapped');
                },
                onLongPress: (){
                  print("Text Long Pressed");
                },
                child: Text(
                  "click here",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
