import 'package:flutter/material.dart';

class RestaurantLogoSmall extends StatelessWidget {
  const RestaurantLogoSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: Image.network(
        'https://images.rappi.com.br/restaurants_background/hom-1630503277470.jpg',
        loadingBuilder: (context, child, imageChunk) {
          if (imageChunk == null) {
            return child;
          }
          return Center(
            child: CircularProgressIndicator(
              value: imageChunk.expectedTotalBytes != null
                  ? imageChunk.cumulativeBytesLoaded / imageChunk.expectedTotalBytes!
                  : null,
            ),
          );
        },
        height: 80,
      ),
    );
  }
}
