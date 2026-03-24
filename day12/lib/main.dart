import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSidebarExpanded = true; // track sidebar state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1E3A8A),
        title: const Text("Home"),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              setState(() {
                isSidebarExpanded = !isSidebarExpanded; // toggle sidebar
              });
            },
          ),
        ],
      ),

      body: Row(
        children: [
          // Sidebar
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: isSidebarExpanded ? 200 : 60, // collapsed width
            color: Color(0xFF3B82F6),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Icon(Icons.home, color: Colors.white),
                if (isSidebarExpanded)
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Sidebar", style: TextStyle(color: Colors.white)),
                  ),
              ],
            ),
          ),

          // Main Content
          Expanded(
            child: Container(
              color: Color(0xFFDBEAFF),
              child: const Center(child: Text("Main Content")),
            ),
          ),
        ],
      ),
    );
  }
}