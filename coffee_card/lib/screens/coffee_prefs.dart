import 'package:coffee_card/widgets/styled_body_text.dart';
import 'package:coffee_card/widgets/styled_button.dart';
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
            const StyledBodyText('Strength: '),
            for(int i = 0; i < strength; i++)
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            StyledButton(
              onPressed: ()=>setStrength(-1), 
              child: const Text('-')),
            StyledButton(
              onPressed: ()=>setStrength(1), 
              child: const Text('+')),
          ],
        ),
        Row(
          children: [
            const StyledBodyText('Sugars: '),
            if (sugars == 0) const StyledBodyText('None') 
            else for (int i = 0; i < sugars; i++)
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            StyledButton(onPressed: ()=>setSugars(-1), child: const Icon(Icons.remove)),
            StyledButton(onPressed: ()=>setSugars(1), child: const Icon(Icons.add)),
          ]
        ),
      ],
    );
  }
}
