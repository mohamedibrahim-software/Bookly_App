import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:bookly_app/features/home/presentation/view/widget/Item_Book_details.dart';
import 'package:flutter/material.dart';

class Book_detailsview_body extends StatelessWidget {
  const Book_detailsview_body({super.key, required this.book});
  final Bookmodel book;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Item_Book_details(book: book),
        ),
      ],
    );
  }
}
