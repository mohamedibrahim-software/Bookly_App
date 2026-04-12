part of 'cart_cubit.dart';

sealed class CartState extends Equatable {
  const CartState();

  @override
  List<Object> get props => [];
}

final class Cartloadedd extends CartState {
  final List<Bookmodel> booke;
  const Cartloadedd(this.booke);
  @override
  List<Object> get props => [DateTime.now().microsecond];
}
