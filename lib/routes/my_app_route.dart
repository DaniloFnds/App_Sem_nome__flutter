import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';

import '../screens/my_app_screen.dart';

class MyAppRoute extends NuRoute {
  @override
  String get path => 'home';

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings settings) {
    return MyApp();
  }
}