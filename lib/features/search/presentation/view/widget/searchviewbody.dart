import 'package:bookly_app/core/utils/Style.dart';
import 'package:bookly_app/features/search/presentation/manger/fetchssearchbooks/cubit/searchbook_cubit.dart';
import 'package:bookly_app/features/search/presentation/view/widget/resaletsearchview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Searchviewbody extends StatelessWidget {
  const Searchviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(22),
            child: TextField(
              onSubmitted: (value) {
                BlocProvider.of<SearchbookCubit>(
                  context,
                ).fetchsearchbooks(search: value);
              },
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              decoration: InputDecoration(
                hintText: 'Search for a book',
                prefixIcon: Icon(Icons.search),
                hintStyle: Styles.textStyle16.copyWith(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Search Resalt', style: Styles.textStyle18),
          ),
          Expanded(child: Resaletsearchview()),
        ],
      ),
    );
  }
}
