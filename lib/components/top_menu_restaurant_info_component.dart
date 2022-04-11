import 'package:app_sem_nome/components/restaurant_logo_small_component.dart';
import 'package:app_sem_nome/components/score_component.dart';
import 'package:flutter/material.dart';

class TopMenuRestaurantInfoComponent extends StatelessWidget {
  const TopMenuRestaurantInfoComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding:const EdgeInsets.only(bottom: 10.0, left: 10),
              child: const RestaurantLogoSmall(),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'Nome do  Restaurante',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Row(
                children: const [
                  Text(
                    'Japonesa',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.grey),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: ScoreComponent(),
                  )
                ],
              ),
              Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Ver mais Informacoes',
                        style: TextStyle(fontSize: 12),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                      )
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  'Mesa 10',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  List<Widget> _generateCategoryTab() {
    List<Widget> lista = [];
    List<String> mocksNames = ["Combo", "Promoção", "Carnes", "Peixe", "Burguer"];
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
}
