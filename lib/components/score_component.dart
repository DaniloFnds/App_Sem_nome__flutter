import 'package:flutter/material.dart';

class ScoreComponent extends StatelessWidget {
  const ScoreComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star_half,
          color: Colors.amber[400],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 2),
          child: Text(
            '4',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}
