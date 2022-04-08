import 'package:flutter/material.dart';

class LinkToPageRestaurants extends StatelessWidget {
  final String titulo;
  final Function() openPage;

  const LinkToPageRestaurants({Key? key, required this.titulo, required this.openPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: openPage,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10, top: 30),
        child: Row(
          children:  [
            Text(
              titulo,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 5),
              child: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      ),
    );
  }
}
