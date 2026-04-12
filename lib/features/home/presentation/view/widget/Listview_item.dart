import 'package:bookly_app/core/utils/Approuter.dart';
import 'package:bookly_app/core/utils/Fakedata.dart';
import 'package:bookly_app/features/home/presentation/manger/featcherbook_cubit/cubit/feature_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/widget/Custem_Item_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

class Listview_item extends StatelessWidget {
  const Listview_item({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<fatchFeatureCubit, FeatureState>(
      builder: (context, state) {
        if (state is Featurefailer) {
          return Center(child: Text(state.message));
        }
        final isloading = state is Featureloading;
        final loaded = state is Featuresucsess ? state.books : getfakedata();
        return Skeletonizer(
          enabled: isloading,
          effect: ShimmerEffect(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: loaded.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => GoRouter.of(
                    context,
                  ).push(Approuter.bookedetailsview, extra: loaded[index]),
                  child: Custem_Item_listview(
                    image:
                        loaded[index].volumeInfo?.imageLinks?.thumbnail ?? '',
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
