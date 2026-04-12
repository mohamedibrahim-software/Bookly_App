import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repo/HomerepoImpl.dart';
import 'package:bookly_app/features/home/presentation/manger/featcherbook_cubit/cubit/feature_cubit.dart';
import 'package:bookly_app/features/home/presentation/manger/featchnewstbook/cubit/newst_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/widget/CustemAppBar.dart';
import 'package:bookly_app/features/home/presentation/view/widget/HomeviewBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              fatchFeatureCubit(getit.get<Homerepoimpl>())..featchfeaturebook(),
        ),
        BlocProvider(
          create: (context) =>
              fatchNewstCubit(getit.get<Homerepoimpl>())..featchnewstbook(),
        ),
      ],
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(77),
          child: CustemAppBar(),
        ),
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [SliverToBoxAdapter(child: HomeviewBody())],
        ),
      ),
    );
  }
}
