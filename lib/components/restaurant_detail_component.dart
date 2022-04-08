import 'package:app_sem_nome/components/restaurant_logo_small_component.dart';
import 'package:app_sem_nome/components/score_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'heart_component.dart';

class RestaurantDetailComponent extends StatelessWidget {
  const RestaurantDetailComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      color: const Color(0xFF737373),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: RestaurantLogoSmall(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Coco Bambu',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Tipo Comida',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 30),
                          child: Row(
                            children: const [
                              ScoreComponent(),
                              Padding(
                                padding: EdgeInsets.only(left: 30),
                                child: HeartComponent(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 5, top: 5),
              child: Text(
                'Sobre',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const Text('Os Restaurantes Coco Bambu possuem um amplo cardápio, com comidas e bebidas '
                'diferenciadassdsssssssssssssssssssssssss'),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 5),
              child: Text(
                'Endereco',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SelectableText(
              'Av dos Remedios, 2446 - Sao Paulo/SP',
              toolbarOptions: ToolbarOptions(copy: true, selectAll: true),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () => print('click ver cardapio'),
                    child: const Text('Ver Cardapio'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
