import 'package:app_sem_nome/screens/menu_restaurant_screen.dart';
import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';

class MenuRestaurantRoute extends NuRoute {
  @override
  String get path => 'menu-restaurant';

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings settings) {
    return MenuRestaurantScreen();
  }
}