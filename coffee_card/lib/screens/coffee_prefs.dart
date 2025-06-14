import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {

  int strength = 3;
  int sugars = 3;

  void increaseStrength() {
    setState(()=>strength++);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Strength: '),
            for(int i = 0; i < strength; i++)
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            IconButton(
              onPressed: (){setState(()=>strength--);}, 
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
            for (int i = 0; i < sugars; i++)
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            IconButton(onPressed: ()=>setState(()=>sugars--), icon: const Icon(Icons.remove)),
            IconButton(onPressed: ()=>setState(()=>sugars++), icon: const Icon(Icons.add)),
          ]
        ),
      ],
    );
  }
}
