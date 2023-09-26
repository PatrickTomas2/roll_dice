import 'dart:math';
import 'package:flutter/material.dart';

class RollDiceScreen extends StatefulWidget {
  const RollDiceScreen({super.key});

  @override
  State<RollDiceScreen> createState() => _RollDiceScreenState();
}
int activeFaceDice = 6;
List<String> faceDice = [
  'https://upload.wikimedia.org/wikipedia/commons/2/2c/Alea_1.png',
  'https://upload.wikimedia.org/wikipedia/commons/b/b8/Alea_2.png',
  'https://upload.wikimedia.org/wikipedia/commons/2/2f/Alea_3.png',
  'https://upload.wikimedia.org/wikipedia/commons/8/8d/Alea_4.png',
  'https://upload.wikimedia.org/wikipedia/commons/5/55/Alea_5.png',
  'https://upload.wikimedia.org/wikipedia/commons/f/f4/Alea_6.png',
  'https://clipart-library.com/images/qcBX8Xp8i.gif'
  ];
class _RollDiceScreenState extends State<RollDiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient (
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.indigo,
              Colors.yellow,
            ]
            )
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Allen Kulot",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Image.network(
                faceDice[activeFaceDice],
                ),
                TextButton(onPressed: (){
                  var ranNum = Random().nextInt(6);
                  setState(() {
                    activeFaceDice = ranNum;
                  });
                  print("button pressed");
                },
                child: const Text("Stop It Kulot",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  letterSpacing: 5,
                  fontWeight: FontWeight.bold,
                ),)
                ),
            ],
          ),
        ),
      ),
    );
  }
}