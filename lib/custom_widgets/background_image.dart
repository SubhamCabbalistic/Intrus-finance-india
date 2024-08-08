import 'package:flutter/material.dart';

class Background_image extends StatelessWidget {
  const Background_image({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('asset/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
