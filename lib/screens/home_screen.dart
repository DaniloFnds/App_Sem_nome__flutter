import 'package:app_sem_nome/components/link_to_nearby_restaurant.dart';
import 'package:app_sem_nome/components/localization_component.dart';
import 'package:app_sem_nome/components/restaurant_card_component.dart';
import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';

import '../components/search_bar_component.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

//TODO qd abre o teclado esta abrindo o floatingMenu
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final nuv = Nuvigator.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: LocalizationComponent(),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SearchBarComponent(),
              ),
              Divider(
                color: Colors.grey[400],
              ),
              LinkToPageRestaurants(
                titulo: 'Restaurantes Próximos',
                openPage: () {
                  nuv.open('restaurant-list');
                },
              ),
              FutureBuilder<List<Widget>>(
                future: _generateRestaurantesProximos(context),
                builder: (context, AsyncSnapshot<List<Widget>> snapshot) {
                  return snapshot.hasData ? Column(children: snapshot.data!) : const CircularProgressIndicator();
                },
              ),
              LinkToPageRestaurants(
                titulo: 'Visitados Recentemente',
                openPage: () {},
              ),
              FutureBuilder<List<Widget>>(
                future: _generateRestaurantesProximos(context),
                builder: (context, AsyncSnapshot<List<Widget>> snapshot) {
                  return snapshot.hasData ? Column(children: snapshot.data!) : const CircularProgressIndicator();
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<List<Widget>> _generateRestaurantesProximos(BuildContext context) async {
    List<Widget> children = [
      const RestaurantCardComponent('Restaurente 1', 'Japonesa', 'imagem', 4.2, false),
      const RestaurantCardComponent('Restaurente 2', 'Chinesa', 'imagem', 4.2, false),
    ];
    return children;
  }
}
