import 'package:flutter/material.dart';
import 'package:untitled/questionScreen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurpleAccent[100],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Funny Quiz",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                width: 300.0,
                height: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(100.0),
                      bottom: Radius.circular(100.0)),
                  image: DecorationImage(
                      image: AssetImage('assets/home.jpg'), fit: BoxFit.fill),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuestionScreen(0),
                    ),
                  );
                },
                child: Container(
                  width: 200,
                  height: 100,
                  child: Center(
                      child: Text(
                    'Start',
                    style: TextStyle(color: Colors.grey[400], fontSize: 32.0),
                  )),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[400],
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
