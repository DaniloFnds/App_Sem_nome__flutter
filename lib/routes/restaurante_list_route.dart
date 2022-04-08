import 'package:app_sem_nome/screens/restaurants_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';

class RestaurantListRoute extends NuRoute {
  @override
  String get path => 'restaurant-list';

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings settings) {
    return RestaurantsListScreen();
  }
}