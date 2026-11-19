import 'dart:math';

import 'package:flutter/material.dart';

// Steps of stateful widget creation
// 1) Create a class that extends StatefulWidget and create a constructor for it
// 2) Create another state class that extends State<ClassName>
// 3) Create a createState() function in the class
// 4) Create a build() function in the state class
// 5) Use setState for any UI updates

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  // Create state helps to render the initial UI
  // It is called when the screen is first loaded
  // After this, all dynamic or changing screen is handles by _DiceRollerState
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// undercore means that the class is private
// State is the one that renders the Ui "state"
// State is the dynamic part of the widget
class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random(); // Random class helps to generate random numbers
  var currentDiceNumber = 5; // Default dice number

  void rollDice() {
    // setState will call the build everytime a varible inside it is updated
    // In this case, setState will call the build function eveytime 'currentDiceNumber" changes
    // Note: calling build function = re-rendering the UI
    setState(() {
      // Since the number generator starts from 0-5, we add 1 to make it 1-6
      currentDiceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Image of the dice
        Image.asset('assets/dice-$currentDiceNumber.png', width: 250),
        // Button that rolls the dice
        TextButton(
          onPressed: rollDice,
          child: const Text(
            "Press Me",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}