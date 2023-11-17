
import 'package:bookly_app/features/home/data/models/book_model/bookmodel.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'books_details_section.dart';


class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key, required this.bookModel}) : super(key: key);
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: BookDetailsSection(bookModel: bookModel),
          ),
          const Expanded(
            child:  SizedBox(
                height: 16
            ),
          ),
          const SimilarBooksSection()
        ],
      ),
    );
  }
}






