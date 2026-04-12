import 'package:bookly_app/core/utils/Approuter.dart';
import 'package:bookly_app/core/utils/Style.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:bookly_app/features/home/presentation/view/widget/BookRating.dart';
import 'package:bookly_app/features/home/presentation/view/widget/iconfav.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Item_Book extends StatelessWidget {
  const Item_Book({super.key, required this.book});
  final Bookmodel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Approuter.bookedetailsview, extra: book);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Stack(
          children: [
            SizedBox(
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
                              color: Theme.of(
                                context,
                              ).textTheme.bodyMedium?.color,
                            ),
                          ),
                        ),

                        SizedBox(
                          width: MediaQuery.of(context).size.width * .6,
                          child: Expanded(
                            child: Text(
                              book.volumeInfo?.description ??
                                  book.volumeInfo?.authors?[0] ??
                                  'The Jungle Book ndvnsfdlkvn jvbjfslbjksf dvjfskbjfs jlbls',

                              maxLines: 2,
                              style: Styles.textStyle16.copyWith(
                                fontFamily: 'GTSectraFine',
                                color: Colors.grey,
                                overflow: TextOverflow.visible,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              double.parse(book.price!.toString()).toString(),

                              style: Styles.textStyle20.copyWith(),
                            ),
                            SizedBox(width: 88),
                            BookRating(info: book),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              child: Align(
                alignment: Alignment.topRight,
                child: Iconfav(book: book),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
