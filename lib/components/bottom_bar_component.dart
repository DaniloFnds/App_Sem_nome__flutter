import 'package:flutter/material.dart';

class BottomBarComponent extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChangedTab;
  final BuildContext context;

  const BottomBarComponent({required this.index, required this.onChangedTab, Key? key, required this.context}) : super(key: key);

  @override
  _BottomBarComponentState createState() => _BottomBarComponentState();
}

class _BottomBarComponentState extends State<BottomBarComponent> {
  @override
  Widget build(BuildContext context) {
    const placeholder = Opacity(
      opacity: 0,
      child: IconButton(icon: Icon(Icons.no_cell), onPressed: null),
    );

    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      color: Colors.grey[350],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: IconTheme(
              data: const IconThemeData(color: Colors.orange),
              child: IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: IconTheme(
              data: const IconThemeData(color: Colors.black),
              child: IconButton(
                icon: const Icon(Icons.account_circle_outlined),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
