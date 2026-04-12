import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Custem_Item_listview extends StatelessWidget {
  const Custem_Item_listview({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(9),
        child: AspectRatio(
          aspectRatio: 2 / 3,
          child: CachedNetworkImage(
            imageUrl: image,
            fit: BoxFit.fill,

            errorWidget: (context, url, error) =>
                Icon(Icons.error, color: Colors.white, size: 88),
          ),
        ),
      ),
    );
  }
}
