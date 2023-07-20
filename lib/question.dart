import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatelessWidget{

  final String _question;
  Question(this._question);

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 50, 10, 50),
      color: Colors.orange[50],
      margin: const EdgeInsets.all(25),
      child: Text(_question, 
        style: GoogleFonts.oswald(
          textStyle: const TextStyle(
            fontSize:27.8,
            letterSpacing:2,
          )
        ),
        textAlign: TextAlign.center,
      ),
      
    );
  }
}