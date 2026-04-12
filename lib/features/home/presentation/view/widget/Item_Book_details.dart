import 'package:bookly_app/core/utils/Style.dart';
import 'package:bookly_app/core/utils/custemsnacpar.dart';
import 'package:bookly_app/features/cart/presentation/manger/cubitcart/cubit/cart_cubit.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:bookly_app/features/home/presentation/view/widget/Achion_bottom_Bookdetailsview.dart';
import 'package:bookly_app/features/home/presentation/view/widget/BookRating.dart';
import 'package:bookly_app/features/home/presentation/view/widget/Custem_Item_listview.dart';
import 'package:bookly_app/features/home/presentation/view/widget/Custeme_bottom.dart';
import 'package:bookly_app/features/home/presentation/view/widget/simlarbook_lisview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Item_Book_details extends StatelessWidget {
  const Item_Book_details({super.key, required this.book});
  final Bookmodel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 8,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .28,
          ),
          child: Custem_Item_listview(
            image: book.volumeInfo?.imageLinks?.thumbnail ?? '',
          ),
        ),
        SizedBox(height: 11),
        Text(
          textAlign: TextAlign.center,
          book.volumeInfo?.title ?? 'The Jungle Book ',
          style: Styles.textStyle30,
        ),
        Text(
          textAlign: TextAlign.center,
          book.volumeInfo?.authors?[0] ?? book.volumeInfo?.description ?? '',
          style: Styles.textStyle20.copyWith(
            color: Colors.grey,
            fontFamily: 'GTSectraFine',
          ),
        ),
        BookRating(info: book),
        SizedBox(height: 11),
        Achion_bottom_Bookdetailsview(book: book),
        Expanded(child: SizedBox(height: 0.3)),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 11),
            child: Text('you can also like', style: Styles.textStyle16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: addtocartbottom(book: book),
        ),
        simlarbook_lisview(),
        SizedBox(height: 5),
      ],
    );
  }
}

class addtocartbottom extends StatelessWidget {
  const addtocartbottom({super.key, required this.book});

  final Bookmodel book;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubit, CartState>(
      listener: (context, state) {
        custemsnacpar(
          context,
          'The book added to the cart',
          Icons.add_shopping_cart_outlined,
        );
      },
      builder: (context, state) {
        final isincart = BlocProvider.of<CartCubit>(
          context,
        ).cartrepo.isincart(book);
        return Custeme_bottom(
          minimumSize: Size(double.infinity, 55),
          borderRadiusGeometry: BorderRadiusGeometry.circular(22),
          color: isincart ? Colors.blueGrey : Colors.deepPurple,
          text: Text(
            isincart ? ' the book is in the cart' : 'Add to cart',
            style: Styles.textStyle20.copyWith(color: Colors.white),
          ),
          ontap: () {
            if (isincart) {
              custemsnacpar(
                context,
                'The book is already in the cart',
                Icons.add_shopping_cart_outlined,
              );
            } else {
              BlocProvider.of<CartCubit>(context).addtocart(book);
            }
          },
        );
      },
    );
  }
}
