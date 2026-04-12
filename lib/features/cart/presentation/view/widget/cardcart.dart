import 'package:bookly_app/core/utils/Style.dart';
import 'package:bookly_app/features/cart/presentation/view/widget/countcard.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Cardcart extends StatelessWidget {
  const Cardcart({super.key, required this.book});
  final Bookmodel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: SizedBox(
        height: 140,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(9),
              child: AspectRatio(
                aspectRatio: 2 / 3,
                child: CachedNetworkImage(
                  imageUrl: book.volumeInfo?.imageLinks?.thumbnail ?? '',
                  fit: BoxFit.fill,

                  errorWidget: (context, url, error) =>
                      Icon(Icons.error, color: Colors.white, size: 22),
                ),
              ),
            ),
            SizedBox(width: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      book.volumeInfo?.title ??
                          'The Jungle Book ndvnsfdlkvn jvbjfslbjksf dvjfskbjfs jlbls',
                      maxLines: 1,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: 'GTSectraFine',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  countcard(book: book),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
