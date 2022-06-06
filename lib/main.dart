import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home:Scaffold(
            backgroundColor: Colors.blue[500],
            appBar: AppBar(
              backgroundColor: Colors.blue[900],
              title: Text(
                "Ask Me Anything",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 25),
              ),
              centerTitle: true,
            ),
            body: MagicBall(),
          ),
      ),
    );

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int imageNumber = 1;
  void changeImage() {
    imageNumber = Random().nextInt(4) + 2;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Image has been tapped!!!');
                setState(() {
                  changeImage();
                });
              },
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset('images/ball$imageNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
