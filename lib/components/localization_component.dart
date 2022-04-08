import 'package:flutter/material.dart';

class LocalizationComponent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('teste'),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: const [
                Text('Av dos remedios', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 16),),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 18,
                  color: Colors.blue,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
