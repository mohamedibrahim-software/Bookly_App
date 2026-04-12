import 'package:bookly_app/core/utils/Style.dart';
import 'package:bookly_app/features/favorite/presintation/manger/getfav/cubit/fav_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/widget/Item_best_sellar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Favbody extends StatelessWidget {
  const Favbody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavCubit, FavState>(
      builder: (context, state) {
        if (state is favloaded) {
          if (state.books.isEmpty) {
            return Center(child: Text('No Fav', style: Styles.textStyle20));
          }
          return ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) =>
                Item_Book(book: state.books[index]),
          );
        }
        return SizedBox();
      },
    );
  }
}
