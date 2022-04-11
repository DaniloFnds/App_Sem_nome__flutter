import 'package:app_sem_nome/components/top_menu_restaurant_bar_component.dart';
import 'package:flutter/material.dart';

import '../components/top_menu_restaurant_info_component.dart';

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
          const SliverToBoxAdapter(child: Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Divider(height: 5, color: Colors.grey,),
          ),),
          SliverPersistentHeader(delegate: _SLiverAppBarDelegate(), pinned: true),
          SliverList(delegate: SliverChildListDelegate(_generateCategoryTab()))
        ],
      ),
    );
  }
}

class _SLiverAppBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[100]),
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
    return 40.0;
  }
}

List<Widget> _generateCategoryTab() {
  List<Widget> lista = [];
  List<String> mocksNames = ["Combo", "Promoção", "Carnes", "Peixe", "Burguer", "Burguer", "Burguer", "Burguer", "Burguer", "Burguer", "Burguer", "Burguer", "Burguer", "Burguer", "Burguer"];
  for (String name in mocksNames) {
    lista.add(Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
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
