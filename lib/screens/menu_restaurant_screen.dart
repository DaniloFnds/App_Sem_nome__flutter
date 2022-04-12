import 'package:app_sem_nome/components/group_item_card_component.dart';
import 'package:app_sem_nome/components/top_menu_restaurant_bar_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../components/item_card_component.dart';
import '../components/top_menu_restaurant_info_component.dart';
import '../model/item_card.dart';

class MenuRestaurantScreen extends StatelessWidget {
  MenuRestaurantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.grey[50],
            title: const TopMenuRestaurantBarComponent(),
            centerTitle: true,
            expandedHeight: 160.0,
            flexibleSpace: const FlexibleSpaceBar(
              background: TopMenuRestaurantInfoComponent(),
            ),
          ),
          const SliverToBoxAdapter(
            child: Divider(
              color: Colors.grey,
            ),
          ),
          SliverPersistentHeader(delegate: _SLiverAppBarDelegate(), pinned: true),
          SliverList(delegate: SliverChildListDelegate(_generateCardapio()))
        ],
      ),
    );
  }
}

class _SLiverAppBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      decoration: BoxDecoration(color: Colors.grey[50], boxShadow: [
        overlapsContent
            ? BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        )
            : BoxShadow()
      ]),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: _generateCategoryTab(),
      ),
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }

  @override
  double get maxExtent {
    return 50.0;
  }

  @override
  double get minExtent {
    return 50.0;
  }
}

List<String> _mocksNames = [
  "Combo",
  "Promoção",
  "Carnes",
  "Peixe",
  "Burguer",
];

List<Widget> _generateCategoryTab() {
  List<Widget> lista = [];
  for (String name in _mocksNames) {
    lista.add(Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, bottom: 2),
      child: ElevatedButton(
        onPressed: () => print('clicou em aba'),
        child: Text(name),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          foregroundColor: MaterialStateProperty.all(Colors.black),
        ),
      ),
    ));
  }

  return lista;
}

List<Widget> _generateCardapio() {
  List<GroupItemCardComponent> lista = [];
  Map<String, double> mapItens =
  Map.of({"Bacalhau": 100.0, "XSalada": 30.0, "Parmegiana": 25.0, "Carioca": 40.0, "Feijoada": 30.0, "Coca": 4.00});
  _mocksNames.forEach((element) {
    List<ItemCardComponent> listaItem = [];
    mapItens.forEach((key, value) {
      listaItem.add(
          ItemCardComponent(
            itemCard: ItemCard(key, value),
          ),
      );
    });
    lista.add(GroupItemCardComponent(itemsCard: listaItem, nomeGroup: element));
  });
  return lista;
}
