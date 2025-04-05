import 'dart:math';

import 'package:flutter/material.dart';

class Throw extends StatefulWidget{

const Throw({super.key});

@override
  State<Throw> createState() {
  return _ThrowState();
  }
}
class _ThrowState extends State<Throw>{
    String userChoice = '❓';
  String computerChoice = '❓';
  String result = '';
  int userScore = 0;
  int computerScore = 0;

  final List<String> choices = ['✊', '✋', '✌️'];

  void userChoiceMade(String choice) {
    String compChoice = choices[Random().nextInt(3)];

    String gameResult = getResult(choice, compChoice);

    setState(() {
      userChoice = choice;
      computerChoice = compChoice;
      result = gameResult;
    });
  }

  String getResult(String user, String comp) {
    if (user == comp) {
      return 'It is a Tie 😐';
    } else if (
      (user == '✊' && comp == '✌️') ||
      (user == '✋' && comp == '✊') ||
      (user == '✌️' && comp == '✋')) {
        userScore++;
        return 'You Win 😎';
    } else {
        computerScore++;
        return 'You Lose 😢';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        const Text(
          'Let\'s Play Rock-Paper-Scissors',
          style: TextStyle(fontSize: 26, color: Colors.black),
        ),
        const SizedBox(height: 30),
        Text('You: $userChoice', style: const TextStyle(fontSize: 20)),
        const SizedBox(height: 10),
        Text('Computer: $computerChoice', style: const TextStyle(fontSize: 20)),
        const SizedBox(height: 30),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => userChoiceMade('✊'),
              child: Image.asset('assets/images/Screenshot 2025-04-05 160742.png',
                width: 90,
                height: 90,
              ),
            ),
            const SizedBox(width: 20),
            GestureDetector(
              onTap: () => userChoiceMade('✌️'),
              child: Image.asset('assets/images/Screenshot 2025-04-05 160813.png',
                width: 90,
                height: 90,
              ),
            ),
            const SizedBox(width: 20),
            GestureDetector(
              onTap: () => userChoiceMade('✋'),
              child: Image.asset('assets/images/Screenshot 2025-04-05 160920.png',
                width: 90,
                height: 90,
              ),
            ),
          ],
        ),

        const SizedBox(height: 30),
        Text(result, style: const TextStyle(fontSize: 22)),
        const SizedBox(height: 20),
        Text('Your Score: $userScore    Computer Score: $computerScore',
            style: const TextStyle(fontSize: 18)),
      ],
    );
  }


}