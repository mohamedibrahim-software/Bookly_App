import 'package:bookly_app/core/utils/Fakedata.dart';
import 'package:bookly_app/core/utils/Style.dart';
import 'package:bookly_app/features/home/presentation/manger/fetchitembook/cubit/items_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/widget/Custem_Item_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class simlarbook_lisview extends StatelessWidget {
  const simlarbook_lisview({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemsCubit, ItemsState>(
      builder: (context, state) {
        if (state is itemsfailer) {
          Center(child: Text(state.message, style: Styles.textStyle18));
        }
        final isloading = state is itemsloading;
        final loaded = state is itemssucsess ? state.books : getfakedata();
        return Skeletonizer(
          enabled: isloading,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .2,
            child: ListView.builder(
              itemCount: loaded.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Custem_Item_listview(
                  image: loaded[index].volumeInfo?.imageLinks?.thumbnail ?? '',
                );
              },
            ),
          ),
        );
      },
    );
  }
}
