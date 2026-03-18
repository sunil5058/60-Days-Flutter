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
      debugShowCheckedModeBanner: false, // removes debug banner
      title: 'My Flutter App',
      theme: ThemeData(primarySwatch: Colors.indigo),
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

      body: Container(
        width: 400,
        height: 500,
        child: Center(
          child: Container(
            height: 400,
            width: 400,
            color: Colors.blue[200],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Lionel Messi', style: TextStyle(fontSize: 30)),
        
                Image.asset('assets/images/messi.jpg'),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        print("You liked the picture");
                      },
                      child: Text("Like"),
                    ),
                    ElevatedButton(
                      
                      onPressed:(){
                      print("you clicked in comment");
                    },
                    child: Text("Comment"),),
                    ElevatedButton(
                      onPressed:(){
                      print("you clicked in share");
                    },
                    child: Text("Share"),)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
