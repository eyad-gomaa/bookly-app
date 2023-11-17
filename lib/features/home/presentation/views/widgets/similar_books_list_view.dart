import 'package:bookly_app/core/widget/custom_circle_progress_indicator.dart';
import 'package:bookly_app/features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_featured_books_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess){
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: SizedBox(
                    width: MediaQuery.of(context).size.height * 0.1,
                    child:  CustomFeaturedBooksItem(
                      imageUrl:
                        state.books[index].volumeInfo!.imageLinks == null ?  " " : state.books[index].volumeInfo!.imageLinks!.thumbnail!,
                    )),
              ),
            ),
          );
        }else if (state is SimilarBooksFailure){
          return ErrorWidget(state.errMessage);
        }else{
          return CustomCircleProgressIndicator();
        }
      },
    );
  }
}
