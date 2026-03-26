import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Root widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

// Home Screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

 @override
Widget build(BuildContext context) {
  var characters = [
    {'name': 'Hinata Hyuga', 'image': 'assets/images/hinata.jpg'},
    {'name': 'Jiraiya', 'image': 'assets/images/jiraiya.jpg'},
    {'name': 'Kakashi Hatake', 'image': 'assets/images/kakashi.jpg'},
    {'name': 'Konan', 'image': 'assets/images/konan.jpg'},
    {'name': 'Minato Namikaze', 'image': 'assets/images/minato.jpg'},
    {'name': 'Obito Uchiha', 'image': 'assets/images/obito.jpg'},
    {'name': 'Sakura Haruno', 'image': 'assets/images/sakura.jpg'},
    {'name': 'Sasuke Uchiha', 'image': 'assets/images/sasuke.jpg'},
  ];

  return Scaffold(
    appBar: AppBar(
      title: const Text("Home"),
    ),
    body: ListView.separated(
      itemCount: characters.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              characters[index]['image']!,
            ),
          ),
          title: Text(characters[index]['name']!),
          subtitle: const Text("Naruto Character"),
          trailing: const Icon(Icons.add),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(
          height: 1,
          thickness: 1,
        );
      },
    ),
  );
}
}