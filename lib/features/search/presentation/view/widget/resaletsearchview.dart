import 'package:bookly_app/core/utils/Fakedata.dart';
import 'package:bookly_app/core/utils/Style.dart';
import 'package:bookly_app/features/home/presentation/view/widget/Item_best_sellar.dart';
import 'package:bookly_app/features/search/presentation/manger/fetchssearchbooks/cubit/searchbook_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class Resaletsearchview extends StatelessWidget {
  const Resaletsearchview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchbookCubit, SearchbookState>(
      builder: (context, state) {
        if (state is SearchbookFailure) {
          return Center(child: Text(state.failure));
        } else if (state is SearchbookInitial) {
          return const Center(
            child: Text('Enter Book Name', style: Styles.textStyle20),
          );
        }
        final isloading = state is SearchbookLoading;
        final loaded = state is SearchbookSuccess ? state.books : getfakedata();
        return Skeletonizer(
          enabled: isloading,
          child: ListView.builder(
            itemCount: loaded.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Item_Book(book: loaded[index]);
            },
          ),
        );
      },
    );
  }
}
