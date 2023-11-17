
import '../../../data/models/book_model/bookmodel.dart';

abstract class NewestBooksState {}

class NewestBooksInitial extends NewestBooksState {}
class NewestBooksLoading extends NewestBooksState {}
class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> books;
  NewestBooksSuccess(this.books);
}
class NewestBooksFailure extends NewestBooksState {
  final String errMessage;
  NewestBooksFailure(this.errMessage);
}

