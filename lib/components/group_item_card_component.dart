import 'package:app_sem_nome/components/item_card_component.dart';
import 'package:flutter/material.dart';

class GroupItemCardComponent extends StatelessWidget {
  final String nomeGroup;
  final List<ItemCardComponent> itemsCard;

  const GroupItemCardComponent({Key? key, required this.itemsCard, required this.nomeGroup}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO DEFINIR TAMANHO MAXIMO dos campos
    var tamanho = MediaQuery.of(context).size;
    var largura = tamanho.width;
    return Container(
        height: 160,
        child: Column(
          children: [
            Container(
              height: 60,
              padding: EdgeInsets.only(left: 8, top: 3),
              width: double.infinity,
              child: Text(nomeGroup, style: TextStyle(fontSize: 21,fontWeight: FontWeight.w700),),
            ),
          ],
        ));
  }
}
