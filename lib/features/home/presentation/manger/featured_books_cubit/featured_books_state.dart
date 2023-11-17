
import '../../../data/models/book_model/bookmodel.dart';

abstract class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}
class FeaturedBooksLoading extends FeaturedBooksState {}
class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;
  FeaturedBooksSuccess(this.books);
}
class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessage;
  FeaturedBooksFailure(this.errMessage);
}
