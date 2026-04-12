import 'package:bookly_app/core/utils/Style.dart';
import 'package:bookly_app/features/cart/presentation/manger/cubitcart/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class checkout extends StatelessWidget {
  const checkout({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        final books = (state as Cartloadedd).booke;
        double subtotal = 0.0;
        for (var book in books) {
          subtotal += book.price * (book.quantity ?? 1);
        }

        final shipping = 10;
        final total = subtotal + shipping;

        return Column(
          children: [
            Text('checkout', style: Styles.textStyle30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('subtotal', style: Styles.textStyle20),
                Text(
                  '\$${subtotal.toStringAsFixed(2)}',
                  style: Styles.textStyle20,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('shipping', style: Styles.textStyle20),
                Text(
                  '\$${shipping.toStringAsFixed(2)}',
                  style: Styles.textStyle20,
                ),
              ],
            ),
            Divider(thickness: 0.5, color: Colors.grey),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('total', style: Styles.textStyle20),
                Text(
                  '\$${total.toStringAsFixed(2)}',
                  style: Styles.textStyle20,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
