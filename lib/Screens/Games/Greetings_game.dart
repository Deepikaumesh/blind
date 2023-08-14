import 'package:flutter/material.dart';
import 'package:quiz_view/quiz_view.dart';
import 'package:rflutter_alert/rflutter_alert.dart';



class Greetings_Game extends StatefulWidget {


  @override
  _Greetings_GameState createState() => _Greetings_GameState();
}

class _Greetings_GameState extends State<Greetings_Game> {
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
                      "assets/greetings/yes.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Question 1',
                  questionColor: Colors.black,
                  tagColor: Colors.white,
                  backgroundColor: Colors.white,
                  tagBackgroundColor: Colors.orange,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.orange,
                  question: "Guess the Greeting",
                  height: MediaQuery.of(context).size.height/1.5,
                  width: MediaQuery.of(context).size.width/1.2,
                  rightAnswer: 'Yes',
                  wrongAnswers: [
                    'Hello',
                    'No',
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
                      "assets/greetings/hello.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Question 2',
                  questionColor: Colors.black,
                  tagColor: Colors.white,
                  backgroundColor: Colors.white,
                  tagBackgroundColor: Colors.orange,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.orange,
                  question: "Guess the Greeting",
                  height: MediaQuery.of(context).size.height/1.5,
                  width: MediaQuery.of(context).size.width/1.2,

                  wrongAnswers: [
                    'No',
                    'Yes',
                  ],
                  rightAnswer: 'Hello',
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
                      "assets/greetings/i-love-you.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Question 3',
                  questionColor: Colors.black,
                  tagColor: Colors.white,
                  backgroundColor: Colors.white,
                  tagBackgroundColor: Colors.orange,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.orange,
                  question: "Guess the Greeting",
                  height: MediaQuery.of(context).size.height/1.5,
                  width: MediaQuery.of(context).size.width/1.2,

                  wrongAnswers: [
                    'Sorry',
                    'Please',
                  ],
                  rightAnswer: 'I Love You',
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
                      "assets/greetings/no.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Question 4',
                  questionColor: Colors.black,
                  tagColor: Colors.white,
                  backgroundColor: Colors.white,
                  tagBackgroundColor: Colors.orange,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.orange,
                  question: "Guess the Greeting",
                  height: MediaQuery.of(context).size.height/1.5,
                  width: MediaQuery.of(context).size.width/1.2,

                  wrongAnswers: [
                    'Yes',
                    'Sorry',
                  ],
                  rightAnswer: 'No',
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
                      "assets/greetings/please.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Question 5',
                  questionColor: Colors.black,
                  tagColor: Colors.white,
                  backgroundColor: Colors.white,
                  tagBackgroundColor: Colors.orange,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.orange,
                  question: "Guess the Greeting",
                  height: MediaQuery.of(context).size.height/1.5,
                  width: MediaQuery.of(context).size.width/1.2,

                  wrongAnswers: [
                    'No',
                    'I Love You',
                  ],
                  rightAnswer: 'Please',
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
