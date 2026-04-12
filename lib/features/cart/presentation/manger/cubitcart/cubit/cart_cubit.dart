import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/cart/data/repo/cartrepo.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:equatable/equatable.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit(this.cartrepo) : super(Cartloadedd([]));
  final Cartrepo cartrepo;
  Future<void> addtocart(Bookmodel book) async {
    await cartrepo.addtocart(book);
    emit(Cartloadedd(cartrepo.getcart()));
  }

  void getcart() {
    emit(Cartloadedd(cartrepo.getcart()));
  }

  Future<void> deletcart(Bookmodel book) async {
    await cartrepo.deletcart(book);
    emit(Cartloadedd(cartrepo.getcart()));
  }

  Future<void> deletallcart() async {
    await cartrepo.deletallcart();
    emit(Cartloadedd(cartrepo.getcart()));
  }

  Future<void> increment(Bookmodel book) async {
    await cartrepo.increment(book);
    emit(Cartloadedd(cartrepo.getcart()));
  }

  Future<void> decrement(Bookmodel book) async {
    await cartrepo.decrement(book);
    emit(Cartloadedd(cartrepo.getcart()));
  }
}
