import 'package:first_app_1/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './question.dart';
import './answer.dart';
import './button.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{

  
  var jokes = [
    {'question': 'Why do we tell actors to "break a leg" ?', 'answer':'Because every play has a cast.'},
    {'question': 'Hear about the new restaurant called Karma ?', 'answer':'There’s no menu: You get what you deserve.'},
    {'question': 'Why don’t scientists trust atoms ?', 'answer':'Because they make up everything.'},
    {'question': 'Where are average things manufactured?', 'answer':'Where are average things manufactured?'},
  ];

  var jokeIndex = 0;

  void changeJokeIndex(String direction){

    if(direction == 'next'){

      if(jokeIndex != jokes.length - 1){
        setState(() {
          jokeIndex++;
        });
      }else{

        setState(() {
          jokeIndex = 0;
        });
      }

    }else if(direction == 'prev'){

      if(jokeIndex != 0){
        setState(() {
          jokeIndex--;
        });

      }else{
        setState(() {
          jokeIndex = jokes.length - 1;
        });
      }
    
    }
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Jokky App',
            style: GoogleFonts.oswald(
              textStyle: const TextStyle(
                fontSize: 23,
                letterSpacing:2,
              )
            )), 
          leading: const Icon(Icons.menu),
          centerTitle: true,
          backgroundColor: Colors.orange[500],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment : MainAxisAlignment.center,
            children:  [
              Image.asset('assets/images/clown_1.png',
                height: 150,
                width: 150,
              ),

              Question(jokes[jokeIndex]['question'].toString()),

              Button(changeJokeIndex),
              
              Answer(jokes[jokeIndex]['answer'].toString()),
            ]
          ),
        ),
      )
    );
  }

}