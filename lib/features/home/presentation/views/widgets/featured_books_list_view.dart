import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/home/data/models/book_model/bookmodel.dart';
import 'package:bookly_app/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manger/featured_books_cubit/featured_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/widget/custom_circle_progress_indicator.dart';
import '../../../../../core/widget/custom_error_widget.dart';
import 'custom_featured_books_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.width * 0.44,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.KBookDetailsView,
                        extra: state.books[index]);
                  },
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width * .25,
                      child: CustomFeaturedBooksItem(
                        imageUrl:
                            state.books[index].volumeInfo!.imageLinks == null
                                ? " "
                                : state.books[index].volumeInfo!.imageLinks!
                                    .thumbnail!,
                      )),
                ),
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(
            errMessage: state.errMessage,
          );
        } else {
          return const Center(child: CustomCircleProgressIndicator());
        }
      },
    );
  }
}
