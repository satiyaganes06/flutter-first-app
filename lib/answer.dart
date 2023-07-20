import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Answer extends StatelessWidget {
  final String _answer;

  Answer(this._answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[50],
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.all(25),
      child: Text(_answer,
        style: GoogleFonts.lato(
          textStyle: const TextStyle(
            fontSize:24,
            letterSpacing:1,
          )
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
  
}