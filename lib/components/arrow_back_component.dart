import 'package:flutter/material.dart';

class ArrowBackComponent extends StatelessWidget {
  const ArrowBackComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 50,
      decoration: BoxDecoration(border: Border.all(color: Colors.black), shape: BoxShape.circle),
      child: const Icon(Icons.arrow_back_ios_sharp),
    );
  }
}
