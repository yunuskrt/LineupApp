import 'package:flutter/material.dart';
import 'package:lineup/components/player.dart';

class Page2Screen extends StatelessWidget {
  const Page2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soccer Team'),
      ),
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover,
                opacity: 0.8),
          ),
          child: const Stack(children: [
            CustomPlayerWidget(
              playerName: 'Livakovic',
              playerUrl:
                  'https://im.mackolik.com/img/Oyuncu/241447_01.jpg?v=2.125',
              position: 'GK',
            ),
          ])),
    );
  }
}
