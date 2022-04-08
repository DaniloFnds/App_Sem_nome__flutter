import 'package:app_sem_nome/components/arrow_back_component.dart';
import 'package:app_sem_nome/components/open_or_close_status_component.dart';
import 'package:app_sem_nome/components/restaurant_logo_small_component.dart';
import 'package:app_sem_nome/components/score_component.dart';
import 'package:flutter/material.dart';

class MenuRestaurantScreen extends StatelessWidget {
  const MenuRestaurantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom:0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Align(
                      alignment: Alignment.topLeft,
                      child: ArrowBackComponent(),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: OpenOrCloseStatusComponent(),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only( left: 10),
                    child: Align(alignment: Alignment.topLeft, child: RestaurantLogoSmall()),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      children: [
                        const Center(
                          child: Text(
                            'Nome do  Restaurante',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 45, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Japonesa',
                                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.grey),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 60),
                                child: ScoreComponent(),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: InkWell(
                            onTap: () => print('clicou em ver mais informacoes'),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Ver mais Informacoes',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Icon(Icons.arrow_forward_ios, size: 12,)
                              ],
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text('Mesa 10', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  )
                ],
              ),
                        const Divider(color: Colors.black,)
            ],
          ),
        ),
      ),
    );
  }
}
