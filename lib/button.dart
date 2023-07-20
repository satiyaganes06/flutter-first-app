import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function(String) changeJokeIndex;

  Button(this.changeJokeIndex);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
          child:  FloatingActionButton(
          onPressed: (){
            changeJokeIndex('prev');
          },
          child: const Icon(
            Icons.arrow_left_rounded,
            size:50
          ),
          backgroundColor: Colors.deepOrange,
          )
        ),

        Container(
          margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: FloatingActionButton(
            onPressed: (){
              changeJokeIndex('next');
            },
            child: const Icon(
              Icons.arrow_right_rounded,
              size: 50,
            ),
            backgroundColor: Colors.orangeAccent,
          )
        )
      ]
    );
  }
  
}