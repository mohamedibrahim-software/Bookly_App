import 'package:bookly_app/features/favorite/data/favrepo.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'fav_state.dart';

class FavCubit extends Cubit<FavState> {
  FavCubit(this.favrepo) : super(favloaded(books: []));
  final Favrepo favrepo;

  Future<void> favtoggle(Bookmodel book) async {
    if (favrepo.isfav(book: book)) {
      await favrepo.RemoveFav(book: book);
    } else {
      await favrepo.AddFav(book: book);
    }
    emit(favloaded(books: favrepo.getvav()));
  }

  void getfav() {
    emit(favloaded(books: favrepo.getvav()));
  }
}
