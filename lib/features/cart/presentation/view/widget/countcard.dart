import 'package:bookly_app/core/utils/Style.dart';
import 'package:bookly_app/features/cart/presentation/manger/cubitcart/cubit/cart_cubit.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class countcard extends StatelessWidget {
  const countcard({super.key, required this.book});
  final Bookmodel book;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        return Row(
          children: [
            IconButton(
              onPressed: () {
                BlocProvider.of<CartCubit>(context).decrement(book);
              },
              icon: Icon(Icons.remove_circle_outline, color: Colors.purple),
            ),

            Text('${book.quantity}', style: Styles.textStyle16),

            IconButton(
              onPressed: () {
                BlocProvider.of<CartCubit>(context).increment(book);
              },
              icon: Icon(Icons.add_circle_outline, color: Colors.purple),
            ),
            SizedBox(width: 55),
            IconButton(
              onPressed: () {
                BlocProvider.of<CartCubit>(context).deletcart(book);
              },
              icon: Icon(Icons.delete, color: Colors.red),
            ),
          ],
        );
      },
    );
  }
}
