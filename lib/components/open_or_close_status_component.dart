import 'package:flutter/material.dart';

class OpenOrCloseStatusComponent extends StatelessWidget {
  const OpenOrCloseStatusComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 100,
      decoration: BoxDecoration(border: Border.all(color: Colors.grey[600]!), color: Colors.lightGreen),
      child: const Center(
          child: Text(
            'Aberto',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          )),
    );
  }
}
