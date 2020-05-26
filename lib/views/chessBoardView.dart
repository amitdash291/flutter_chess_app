import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

class ChessBoardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//        backgroundColor: Colors.yellow[100],
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ChessBoard(
          onCheckMate: (String winColor) {},
          onMove: (String moveNotation) {
            print(moveNotation);
          },
          onDraw: () {},
          size: 350.0,
        ),
      ),
    ));
  }
}
