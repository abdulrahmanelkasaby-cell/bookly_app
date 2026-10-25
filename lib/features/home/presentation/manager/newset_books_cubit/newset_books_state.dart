part of 'newset_books_cubit.dart';

sealed class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

final class NewsetBooksInitial extends NewsetBooksState {}

final class FeaturedBooksLoading extends NewsetBooksState {}

final class FeaturedBooksFailure extends NewsetBooksState {
  final String errMessage;

  const FeaturedBooksFailure(this.errMessage);
}

final class FeaturedBooksSuccess extends NewsetBooksState {
  final List<BookModel> books;

  const FeaturedBooksSuccess(this.books);
}
