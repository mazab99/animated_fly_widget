import 'package:animated_fly_widget/shadow.dart';
import 'package:flutter/material.dart';
import 'package:animated_fly_widget/animation_hover.dart';
import 'package:animated_fly_widget/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final icon = genertateIcon(icon: '13d');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fly Widget'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.redAccent[200],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: 600,

                    width: 200,
                    child: SimpleShadow(
                      color: Colors.black.withAlpha(200),
                      offset: const Offset(0, 15),
                      opacity: 0.5,
                      child: AnimatedImage(
                        icon: icon,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String genertateIcon({String? icon}) {
  switch (icon) {
    case '01d':
      return d_1;
    case '02d':
      return d_2;
    case '03d':
      return d_3;
    case '04d':
      return d_4;
    case '09d':
      return d_9;
    case '10d':
      return d_10;
    case '11d':
      return d_11;
    case '13d':
      return d_13;
    case '50d':
      return d_50;
    case '01n':
      return n_1;
    case '02n':
      return n_2;
    case '03n':
      return n_2;
    case '04n':
      return n_4;
    case '09n':
      return n_9;
    case '10n':
      return n_10;
    case '11n':
      return n_11;
    case '13n':
      return n_13;
    case '50n':
      return n_50;
  }
  return d_1;
}
