import 'package:app_sem_nome/routes/home_route.dart';
import 'package:app_sem_nome/routes/menu_restaurant_route.dart';
import 'package:app_sem_nome/routes/restaurante_list_route.dart';
import 'package:nuvigator/next.dart';

class MyRouter extends NuRouter {
  @override
  String get initialRoute => 'menu-restaurant';

  @override
  List<NuRoute> get registerRoutes => [
    HomeRoute(),
    RestaurantListRoute(),
    MenuRestaurantRoute()
  ];
}