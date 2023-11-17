import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widget/custom_circle_progress_indicator.dart';
import 'package:bookly_app/features/home/data/models/book_model/bookmodel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_book_raiting.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key, required this.bookModel,
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.KBookDetailsView,extra:bookModel );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 25,right: 25),
        child: SizedBox(
          width: double.infinity,
          height: 105,
          child: Row(
            children: [
              Container(
                height: 105,
                width: 70,
                child: CachedNetworkImage(
                    imageUrl: bookModel.volumeInfo!.imageLinks == null ? " " :bookModel.volumeInfo!.imageLinks!.thumbnail!,
                  fit: BoxFit.fill,
                  errorWidget: (context, url, error) => const Icon(Icons.error_outline),
                  // placeholder: (context, url) => const CustomCircleProgressIndicator(),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.75,
                      child:  Text(
                        bookModel.volumeInfo!.title!,
                        style: Styles.TextStyle20,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      child: Text(
                        bookModel.volumeInfo!.authors!.first,
                        style: Styles.TextStyle14,
                      ),
                    ),
                    const Expanded(
                      child: Row(
                        children: [
                          Text(
                            "Free",
                            style: Styles.TextStyle20,
                          ),
                          Spacer(
                            flex: 4,
                          ),
                          BookRating(rating: 4.6,count: 690),

                          Spacer(
                            flex: 4,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


