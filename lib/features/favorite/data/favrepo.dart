import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';

abstract class Favrepo {
  Future<void> AddFav({required Bookmodel book});
  Future<void> RemoveFav({required Bookmodel book});
  List<Bookmodel> getvav();
  bool isfav({required Bookmodel book});
}
