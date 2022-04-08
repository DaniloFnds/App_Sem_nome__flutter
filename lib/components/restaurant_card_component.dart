import 'package:app_sem_nome/components/restaurant_detail_component.dart';
import 'package:app_sem_nome/components/restaurant_logo_small_component.dart';
import 'package:app_sem_nome/components/score_component.dart';
import 'package:flutter/material.dart';

import 'heart_component.dart';

// 'Titulo', 'imagem', 'score_point', 'isFavorite'
class RestaurantCardComponent extends StatelessWidget {
  final String titulo;
  final String tipoComida;
  final String imageSrc;
  final double scorePoint;
  final bool isFavorite;

  const RestaurantCardComponent(this.titulo, this.tipoComida, this.imageSrc, this.scorePoint, this.isFavorite,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const RestaurantDetailComponent();
              });
        },
        child: Container(
          decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 0.5, color: Colors.grey[200]!))),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const RestaurantLogoSmall(),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        titulo,
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          tipoComida,
                          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Column(
                    children: const [
                      HeartComponent(),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: ScoreComponent(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
