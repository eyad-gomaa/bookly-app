import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model/bookmodel.dart';
import '../../../data/repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks() async{
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: "category");
    result.fold(
            (failure) => emit(SimilarBooksFailure(errMessage:failure.errMessage)),
            (books) => emit(SimilarBooksSuccess(books: books))
    );
  }
}
