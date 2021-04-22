import 'package:flutter/material.dart';
import 'package:untitled/homeScreen.dart';
import 'package:untitled/quiz%20model/quiz.dart';

class QuestionScreen extends StatefulWidget {
  int index;

  QuestionScreen(this.index);

  @override
  _State createState() => _State();
}

class _State extends State<QuestionScreen> {
  Quiz newQuestion = Quiz();
  bool isCorrect = false;
  bool isWrong = false;
  String photo;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.index == 0) {
      photo = 'assets/Tree.jpg';
    } else if (widget.index == 1) {
      photo = 'assets/Star.jpg';
    } else if (widget.index == 2) {
      photo = 'assets/Maroon.jpg';
    }

    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              newQuestion.quiz[widget.index].question,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              width: 300.0,
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(16.0), bottom: Radius.circular(16.0)),
                image: DecorationImage(
                    image: AssetImage(
                      photo,
                    ),
                    fit: BoxFit.fill),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    if (newQuestion.quiz[widget.index].answer == true)
                      setState(() {
                        isCorrect = true;
                        isWrong = false;
                      });
                    else
                      setState(() {
                        isCorrect = false;
                        isWrong = true;
                      });
                  },
                  child: Container(
                    width: 120,
                    height: 70,
                    child: Center(
                        child: Text(
                      'True',
                      style: TextStyle(color: Colors.black, fontSize: 22.0),
                    )),
                    decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    if (newQuestion.quiz[widget.index].answer == false)
                      setState(() {
                        isCorrect = true;
                        isWrong = false;
                      });
                    else
                      setState(() {
                        isCorrect = false;
                        isWrong = true;
                      });
                  },
                  child: Container(
                    width: 120,
                    height: 70,
                    child: Center(
                        child: Text(
                      'False',
                      style: TextStyle(color: Colors.black, fontSize: 22.0),
                    )),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                )
              ],
            ),
            Visibility(
              child: Icon(
                Icons.check,
                color: Colors.lightGreen,
                size: 50.0,
              ),
              visible: isCorrect,
              replacement: Visibility(
                child: Icon(
                  Icons.clear,
                  color: Colors.redAccent,
                  size: 50.0,
                ),
                visible: isWrong,
              ),
            ),
            MaterialButton(
                onPressed: () {
                  if (widget.index >= 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuestionScreen(widget.index + 1),
                      ),
                    );
                  }
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 170,
                      height: 70,
                      child: Center(
                        child: Text(
                          'Next  >>',
                          style: TextStyle(
                              color: Colors.grey[400], fontSize: 32.0),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[400],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
