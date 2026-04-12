import 'package:bookly_app/core/utils/Style.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.info});
  final Bookmodel info;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star_rate_rounded, color: Colors.yellow),
        Text(
          info.volumeInfo?.averageRating?.toString() ?? '2.4',
          style: Styles.textStyle16,
        ),
        Text(
          info.volumeInfo?.ratingsCount?.toString() ?? '(221)',
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w200,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
