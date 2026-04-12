import 'package:bookly_app/core/utils/Style.dart';
import 'package:bookly_app/features/cart/presentation/manger/cubitcart/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class apparcart extends StatelessWidget {
  const apparcart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Your cart',
          style: Styles.textStyle20.copyWith(color: Colors.white),
        ),

        Text(
          'Clear cart',
          style: Styles.textStyle20.copyWith(color: Colors.white),
        ),
        IconButton(
          onPressed: () {
            BlocProvider.of<CartCubit>(context).deletallcart();
          },
          icon: Icon(Icons.delete, color: Colors.red, size: 33),
        ),
      ],
    );
  }
}
