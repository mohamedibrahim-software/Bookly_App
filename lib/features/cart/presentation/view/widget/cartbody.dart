import 'package:bookly_app/core/utils/Style.dart';
import 'package:bookly_app/features/cart/presentation/manger/cubitcart/cubit/cart_cubit.dart';
import 'package:bookly_app/features/cart/presentation/view/widget/cardcart.dart';
import 'package:bookly_app/features/cart/presentation/view/widget/checkout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Cartbody extends StatelessWidget {
  const Cartbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 11,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .5,
            child: BlocBuilder<CartCubit, CartState>(
              builder: (context, state) {
                if (state is Cartloadedd) {
                  if (state.booke.isEmpty) {
                    return Center(
                      child: Text('Cart is empty', style: Styles.textStyle20),
                    );
                  }

                  return ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: state.booke.length,
                    itemBuilder: (context, index) {
                      return Cardcart(book: state.booke[index]);
                    },
                  );
                }
                return SizedBox();
              },
            ),
          ),
          checkout(),
        ],
      ),
    );
  }
}
