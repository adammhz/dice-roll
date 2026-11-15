import 'package:flutter/material.dart';
import 'package:dice_roller_app/dice_roller.dart';

class GradientContainer extends StatelessWidget{
  const GradientContainer ({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Colors.lightBlue, Colors.black]),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}