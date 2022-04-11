import 'package:flutter/material.dart';

import 'arrow_back_component.dart';
import 'open_or_close_status_component.dart';

class TopMenuRestaurantBarComponent extends StatelessWidget {
  const TopMenuRestaurantBarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              child: ArrowBackComponent(
            arrowColor: Colors.black,
          )),
          Container(
            child: OpenOrCloseStatusComponent(),
          )
        ],
      ),
    );
  }
}
