import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/search/data/repo/searchrepoimpl.dart';
import 'package:bookly_app/features/search/presentation/manger/fetchssearchbooks/cubit/searchbook_cubit.dart';
import 'package:bookly_app/features/search/presentation/view/widget/searchviewbody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Searchview extends StatelessWidget {
  const Searchview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchbookCubit(getit.get<Searchrepoimpl>()),
      child: Scaffold(body: Searchviewbody()),
    );
  }
}
