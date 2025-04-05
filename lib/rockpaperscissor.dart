import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/throw.dart';

class Rockpaperscissor extends StatelessWidget{

  const Rockpaperscissor({super.key});
  
  @override
  Widget build(BuildContext context) {
   return Column(
          mainAxisAlignment: MainAxisAlignment.start,  // Align items to the top
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0), // Add some space at the top
              child: Text('Let\'s Play Rock-Paper-Scissors!',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  )),
            ),
            const SizedBox(height: 100),
            Throw(),
          ],
        );
  }

}