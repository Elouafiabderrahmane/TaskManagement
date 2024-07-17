import 'package:flutter/material.dart';

class AnotherScreen extends StatefulWidget {
  @override
  _AnotherScreenState createState() => _AnotherScreenState();
}

class _AnotherScreenState extends State<AnotherScreen> {
  int _highlightedCircleIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlueAccent, Colors.blueAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png', // Adjust with your logo path
                width: 100, // Adjust the size as needed
                height: 100,
              ),
              SizedBox(height: 20), // Adjust spacing as needed
              Text(
                'Smart Notifications',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                'TaskMate sends timely notifications based on the task details and user defined frequency. This ensures you receive reminders exactly when you need them',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildCircle(0),
                  SizedBox(width: 10),
                  _buildCircle(1),
                  SizedBox(width: 10),
                  _buildCircle(2),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    child: Text('Continue'),
                  ),
                  SizedBox(height: 10), // Add spacing between buttons
                  ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    child: Text('Cancel'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCircle(int index) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _highlightedCircleIndex == index ? Colors.white : Colors.grey,
      ),
    );
  }
}
