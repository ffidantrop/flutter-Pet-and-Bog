import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/graphic_screen.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {

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
              TableCalendar(
                headerStyle: HeaderStyle(titleCentered: true, formatButtonVisible: false),
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
              ),
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
