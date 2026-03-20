import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

// Root Widget
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home:HomePage()
    );
  }
}

