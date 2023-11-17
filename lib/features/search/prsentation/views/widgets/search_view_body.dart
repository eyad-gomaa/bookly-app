import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import '../../../../home/presentation/views/widgets/custom_list_view_item.dart';
import 'custom_text_form_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: CustomTextFormField(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: Text(
                "Results",
                style: Styles.TextStyle20,
              ),
            ),
            Expanded(
                child: SearchResultListView()
            )
          ],
        ),
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 20,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(bottom: 20),
        // child: ListViewItem(bookModel: null,),
      ),
    );

  }
}
