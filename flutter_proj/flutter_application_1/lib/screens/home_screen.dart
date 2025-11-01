import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sleep Tracker',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: Colors.black87,
        leading: Icon(Icons.access_alarm, color: Colors.white, size: 24),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsetsGeometry.all(15),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 233, 233, 233),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 121, 121, 121),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 54, 54, 54),
                    ),
                  ),
                  hintText: "Введите время пробуждения",
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 233, 233, 233),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 121, 121, 121),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 54, 54, 54),
                    ),
                  ),
                  hintText: "Введите время засыпания",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
