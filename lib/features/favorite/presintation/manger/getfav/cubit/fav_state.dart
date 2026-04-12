part of 'fav_cubit.dart';

sealed class FavState extends Equatable {
  const FavState();

  @override
  List<Object> get props => [];
}

final class favloaded extends FavState {
  final List<Bookmodel> books;

  const favloaded({required this.books});

  @override
  List<Object> get props => [books];
}
