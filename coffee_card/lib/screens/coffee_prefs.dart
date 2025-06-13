import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});
  
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
            ElevatedButton(
              onPressed: () {},
              child: const Text('+')),
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
            ElevatedButton(
              onPressed: () {},
              child: const Text('+')),
          ],
        ),
      ],
    );
  }
}
