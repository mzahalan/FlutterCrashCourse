import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});
  
  void increaseStrength() {
    print('strength increased');
  }
  void increaseSugar() {
    print('sugar increased');
  } 
  void decreaseStrength() {
    print('strength decreased');
  } 
  void decreaseSugar() {
    print('sugar decreased');
  } 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Strength: '),
            for(int i = 0; i < 3; i++)
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.remove),
              style: FilledButton.styleFrom(backgroundColor: Colors.brown, foregroundColor: Colors.white),),
            IconButton(
              onPressed: increaseStrength, 
              icon: const Icon(Icons.add),
              style: FilledButton.styleFrom(backgroundColor: Colors.brown, foregroundColor: Colors.white)),
          ],
        ),
        Row(
          children: [
            const Text('Sugars: '),
            for(int i = 0; i < 3; i++)
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            IconButton(onPressed: (){}, icon: const Icon(Icons.remove)),
            IconButton(onPressed: increaseSugar, icon: const Icon(Icons.add)),
          ]
        ),
      ],
    );
  }
}
