import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:bookly_app/features/home/presentation/manger/fetchitembook/cubit/items_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/widget/CusremBookdetails_appar.dart';
import 'package:bookly_app/features/home/presentation/view/widget/Book_detailsview_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Bookdetailsview extends StatefulWidget {
  const Bookdetailsview({super.key, required this.bookmodel});
  final Bookmodel bookmodel;

  @override
  State<Bookdetailsview> createState() => _BookdetailsviewState();
}

class _BookdetailsviewState extends State<Bookdetailsview> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ItemsCubit>(context).fetchitems(
      category: widget.bookmodel.volumeInfo?.categories?[0] ?? 'programming',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(66),
        child: CusremBookdetails_appar(),
      ),
      body: Book_detailsview_body(book: widget.bookmodel),
    );
  }
}
