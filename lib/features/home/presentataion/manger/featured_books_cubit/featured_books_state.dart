part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoding extends FeaturedBooksState {}

class FeaturedBooksFilure extends FeaturedBooksState {
  final String errorMessage;

  const FeaturedBooksFilure(this.errorMessage);
}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel>books;

  const FeaturedBooksSuccess(this.books);
}
