import 'package:bookly_app/core/utils/custemsnacpar.dart';
import 'package:bookly_app/features/favorite/presintation/manger/getfav/cubit/fav_cubit.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Iconfav extends StatelessWidget {
  const Iconfav({super.key, required this.book});

  final Bookmodel book;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavCubit, FavState>(
      listener: (context, state) {
        final isfav = BlocProvider.of<FavCubit>(
          context,
        ).favrepo.isfav(book: book);
        custemsnacpar(
          context,
          isfav ? ' removed to favorite' : ' added from favorite',
          Icons.favorite,
        );
      },
      builder: (context, state) {
        final isfav = context.read<FavCubit>().favrepo.isfav(book: book);
        return Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                context.read<FavCubit>().favtoggle(book);
              },
              icon: Icon(
                Icons.favorite,
                size: 29,
                color: isfav ? Colors.red : Colors.grey,
              ),
            );
          },
        );
      },
    );
  }
}
