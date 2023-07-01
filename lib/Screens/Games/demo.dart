import 'package:flutter/material.dart';
import 'package:quiz_view/quiz_view.dart';
import 'package:rflutter_alert/rflutter_alert.dart';



class DemoApp extends StatefulWidget {


  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
     appBar: AppBar(
       automaticallyImplyLeading: false,
       backgroundColor: Colors.black,),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              QuizView(
                  image: Container(
                    height: 140,
                    width: 150,
                    child: Image.asset(
                      "assets/letter-c.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Question 1',
                  questionColor: Colors.black,
                  tagColor: Colors.white,
                  backgroundColor: Colors.white,
                  tagBackgroundColor: Colors.red.shade900,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.red.shade900,
                  question: "Guess the Alphabet",
                  height: MediaQuery.of(context).size.height/1.5,
                  width: MediaQuery.of(context).size.width/1.2,
                  rightAnswer: 'C',
                  wrongAnswers: [
                    'A',
                    'X',
                  ],
                  onRightAnswer: () {
                    Alert(context: context, title: 'Right').show();
                  },
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'wrong!',
                    ).show();
                  }),
              SizedBox(
                height: 20,
              ),
              QuizView(
                  image: Container(
                    height: 140,
                    width: 150,
                    child: Image.asset(
                      "assets/letter-f.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Question 2',
                  questionColor: Colors.black,
                  tagColor: Colors.white,
                  backgroundColor: Colors.white,
                  tagBackgroundColor: Colors.red.shade900,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.red.shade900,
                  question: "Guess the Alphabet",
                  height: MediaQuery.of(context).size.height/1.5,
                  width: MediaQuery.of(context).size.width/1.2,

                  wrongAnswers: [
                    'P',
                    'O',
                  ],
                  rightAnswer: 'F',
                  onRightAnswer: () {
                    Alert(context: context, title: 'Right').show();
                  },
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'wrong!',
                    ).show();
                  }),
              SizedBox(
                height: 20,
              ),
              QuizView(
                  image: Container(
                    height: 140,
                    width: 150,
                    child: Image.asset(
                      "assets/letter-j.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Question 3',
                  questionColor: Colors.black,
                  tagColor: Colors.white,
                  backgroundColor: Colors.white,
                  tagBackgroundColor: Colors.red.shade900,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.red.shade900,
                  question: "Guess the Alphabet",
                  height: MediaQuery.of(context).size.height/1.5,
                  width: MediaQuery.of(context).size.width/1.2,

                  wrongAnswers: [
                    'X',
                    'T',
                  ],
                  rightAnswer: 'J',
                  onRightAnswer: () {
                    Alert(context: context, title: 'Right').show();
                  },
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'wrong!',
                    ).show();
                  }),
              SizedBox(
                height: 20,
              ),
              QuizView(
                  image: Container(
                    height: 140,
                    width: 150,
                    child: Image.asset(
                      "assets/letter-x.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Question 4',
                  questionColor: Colors.black,
                  tagColor: Colors.white,
                  backgroundColor: Colors.white,
                  tagBackgroundColor: Colors.red.shade900,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.red.shade900,
                  question: "Guess the Alphabet",
                  height: MediaQuery.of(context).size.height/1.5,
                  width: MediaQuery.of(context).size.width/1.2,

                  wrongAnswers: [
                    'u',
                    'T',
                  ],
                  rightAnswer: 'X',
                  onRightAnswer: () {
                    Alert(context: context, title: 'Right').show();
                  },
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'wrong!',
                    ).show();
                  }),
              SizedBox(
                height: 20,
              ),
              QuizView(
                  image: Container(
                    height: 140,
                    width: 150,
                    child: Image.asset(
                      "assets/letter-y.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Question 5',
                  questionColor: Colors.black,
                  tagColor: Colors.white,
                  backgroundColor: Colors.white,
                  tagBackgroundColor: Colors.red.shade900,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.red.shade900,
                  question: "Guess the Alphabet",
                  height: MediaQuery.of(context).size.height/1.5,
                  width: MediaQuery.of(context).size.width/1.2,

                  wrongAnswers: [
                    'I',
                    'E',
                  ],
                  rightAnswer: 'Y',
                  onRightAnswer: () {
                    Alert(context: context, title: 'Right').show();
                  },
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'wrong!',
                    ).show();
                  }),
              SizedBox(
                height: 20,
              ),




            ],
          ),
        ),
      ),
    );
  }
}
