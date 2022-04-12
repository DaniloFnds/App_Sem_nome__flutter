import 'package:app_sem_nome/model/item_card.dart';
import 'package:flutter/material.dart';

class ItemCardComponent extends StatelessWidget {
  final ItemCard itemCard;

  const ItemCardComponent({Key? key, required this.itemCard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tamanho = MediaQuery.of(context).size;
    var largura = tamanho.width;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 5),
      height: 100,
      child: Row(
        children: [
          Container(
            width: largura * 0.7,
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    'Esfiha de Carne',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 40,
                  padding: EdgeInsets.only(bottom: 5, left: 2),
                  child: Text(

                    'Carne moida com tomate e cebola piacada e tempero especialssssssssssssssssssss',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Text(
                    'R\$ 50.00',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: largura * 0.2,
            child: Column(
              children: [Text('imagem')],
            ),
          )
        ],
      ),
    );
  }
}
