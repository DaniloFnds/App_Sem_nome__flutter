import 'package:flutter/material.dart';

class HeartComponent extends StatelessWidget {
  const HeartComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: const Icon(
        Icons.favorite_outline,
        color: Colors.red,
      ),
      onTap: () => print('clicou favorito'),
    );
  }
}
