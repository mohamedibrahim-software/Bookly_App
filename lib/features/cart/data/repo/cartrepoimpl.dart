import 'package:bookly_app/features/cart/data/cachecart/cachecart.dart';
import 'package:bookly_app/features/cart/data/repo/cartrepo.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';

class Cartrepoimpl implements Cartrepo {
  final Cachecart _cachecart = Cachecart();
  @override
  Future<void> addtocart(Bookmodel book) async {
    await _cachecart.addtocart(book);
  }

  @override
  Future<void> decrement(Bookmodel book) async {
    await _cachecart.decrement(book);
  }

  @override
  Future<void> deletallcart() async {
    await _cachecart.deletallcart();
  }

  @override
  Future<void> deletcart(Bookmodel book) async {
    await _cachecart.deletcart(book);
  }

  @override
  List<Bookmodel> getcart() {
    return _cachecart.getcart();
  }

  @override
  Future<void> increment(Bookmodel book) async {
    await _cachecart.increment(book);
  }

  @override
  bool isincart(Bookmodel book) {
    return _cachecart.isincart(book);
  }
}
