import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

class GraphicScreen extends StatelessWidget {
  const GraphicScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(color: Colors.black87),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: Colors.white, size: 40.0),
              style: ButtonStyle(),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.leaderboard, color: Colors.white, size: 40.0),
              style: ButtonStyle(),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GraphicScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(title: const Text('График')),
      body: const Center(child: Text('Это второй экран приложения')),
    );
  }
}
