import 'package:bookly_app/core/utils/Fakedata.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:bookly_app/features/home/presentation/manger/featchnewstbook/cubit/newst_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/widget/Item_best_sellar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class Item_Bestsaller_listview extends StatelessWidget {
  const Item_Bestsaller_listview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<fatchNewstCubit, NewstState>(
      builder: (context, state) {
        if (state is Newstfailer) {
          return Center(child: Text(state.message));
        }
        final isloading = state is Newstloading;
        final loaded = state is Newstsucsess ? state.books : getfakedata();
        return Skeletonizer(
          effect: ShimmerEffect(),
          enabled: isloading,
          child: ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
            itemCount: loaded.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Item_Book(
                book: Bookmodel(volumeInfo: loaded[index].volumeInfo),
              );
            },
          ),
        );
      },
    );
  }
}
