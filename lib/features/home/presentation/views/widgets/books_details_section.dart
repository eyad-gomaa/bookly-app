import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/bookmodel.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_raiting.dart';
import 'custom_books_actions.dart';
import 'custom_featured_books_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomBookDetailsAppBar(),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
            child:  CustomFeaturedBooksItem(imageUrl: bookModel.volumeInfo!.imageLinks == null? " " :bookModel.volumeInfo!.imageLinks!.thumbnail!,)),
        const SizedBox(
          height: 40,
        ),
         Text("${bookModel.volumeInfo!.title}",
            style: Styles.TextStyle30
        ),
        const SizedBox(
          height: 6,
        ),
        Text("${bookModel.volumeInfo!.authors![0]}",
          style: Styles.TextStyle14.copyWith(fontSize: 20),
        ),
        const SizedBox(
          height: 6,
        ),
        const BookRating(rating: 4.6,count: 960,),
        const SizedBox(
          height: 40,
        ),
        const BooksAction(),
      ],
    );
  }
}