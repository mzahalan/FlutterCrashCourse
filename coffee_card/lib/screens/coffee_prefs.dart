import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  static const int maxSugars = 5;
  static const int maxStrength = 5;
  int strength = 3;
  int sugars = 3;

  void setSugars(int newSugars) {
    setState(() {
      if(!((sugars+newSugars) < 0) && !((sugars+newSugars) > maxSugars)) {
        sugars += newSugars;
      }
    });
  }

  void setStrength(int newStrength) {
    setState(() {
      if(!((strength+newStrength) < 1) && !((strength+newStrength) > maxStrength)) {
        strength += newStrength;
      }
    });
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
              onPressed: ()=>setStrength(-1), 
              icon: const Icon(Icons.remove),
              style: FilledButton.styleFrom(backgroundColor: Colors.brown, foregroundColor: Colors.white),),
            IconButton(
              onPressed: ()=>setStrength(1), 
              icon: const Icon(Icons.add),
              style: FilledButton.styleFrom(backgroundColor: Colors.brown, foregroundColor: Colors.white)),
          ],
        ),
        Row(
          children: [
            const Text('Sugars: '),
            if (sugars == 0) const Text('None') 
            else for (int i = 0; i < sugars; i++)
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            IconButton(onPressed: ()=>setSugars(-1), icon: const Icon(Icons.remove)),
            IconButton(onPressed: ()=>setSugars(1), icon: const Icon(Icons.add)),
          ]
        ),
      ],
    );
  }
}
