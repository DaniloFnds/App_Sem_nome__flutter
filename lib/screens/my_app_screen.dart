import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';

import '../components/bottom_bar_component.dart';
import '../router.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      home: Scaffold(
        bottomNavigationBar: BottomBarComponent(
          context: context,
          index: 0,
          onChangedTab: (_) => print('22'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          height: 70,
          width: 70,
          child: FloatingActionButton.extended(
            onPressed: () => print('click no check-in'),
            label: const Text('Check-In'),
            backgroundColor: Colors.green,
            shape: CircleBorder(),
          ),
        ),
        body: Nuvigator(
          router: MyRouter(),
        ),
      ),
    );
  }
}
