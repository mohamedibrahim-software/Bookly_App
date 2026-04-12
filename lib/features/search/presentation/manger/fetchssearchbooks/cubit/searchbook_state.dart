part of 'searchbook_cubit.dart';

sealed class SearchbookState extends Equatable {
  const SearchbookState();

  @override
  List<Object> get props => [];
}

final class SearchbookInitial extends SearchbookState {}

final class SearchbookLoading extends SearchbookState {}

final class SearchbookSuccess extends SearchbookState {
  final List<Bookmodel> books;
  const SearchbookSuccess(this.books);
}

final class SearchbookFailure extends SearchbookState {
  final String failure;
  const SearchbookFailure(this.failure);
}
