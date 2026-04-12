import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';

abstract class Cartrepo {
  Future<void> addtocart(Bookmodel book);
  List<Bookmodel> getcart();
  Future<void> deletcart(Bookmodel book);
  Future<void> deletallcart();
  Future<void> increment(Bookmodel book);
  Future<void> decrement(Bookmodel book);
  bool isincart(Bookmodel book);
}
