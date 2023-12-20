part of 'similar_books_cubit.dart';

abstract class SimilarBooksState extends Equatable {
  @override
  List<Object> get props => [];

  const SimilarBooksState();
}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> books;
  const SimilarBooksSuccess(this.books);
}

class SimilarBooksFailure extends SimilarBooksState {
  final String errMessage;

  const SimilarBooksFailure(this.errMessage);
}

class SimilarBooksLoading extends SimilarBooksState {}
