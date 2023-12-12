
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: BallPage()
    )
  );
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Ask me anything', style: TextStyle(color: Colors.white),),
      ),
      body: Ball()
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void ballChange(){
    ballNumber = Random().nextInt(5)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Image.asset('assets/images/ball$ballNumber.png'),
              onPressed: () {
                setState(() {
                  ballChange();
                });
                
              },
              
            ),
          ],
        ),
      ),
    );
  }
}