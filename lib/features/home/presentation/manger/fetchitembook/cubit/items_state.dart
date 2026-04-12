part of 'items_cubit.dart';

sealed class ItemsState extends Equatable {
  const ItemsState();

  @override
  List<Object> get props => [];
}

final class ItemsInitial extends ItemsState {}

final class itemsloading extends ItemsState {}

final class itemsfailer extends ItemsState {
  final String message;
  const itemsfailer(this.message);
}

final class itemssucsess extends ItemsState {
  final List<Bookmodel> books;
  const itemssucsess(this.books);
}
