import 'package:app_sem_nome/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';

class HomeRoute extends NuRoute {
  @override
  String get path => 'home';

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings settings) {
    return HomeScreen();
  }
}