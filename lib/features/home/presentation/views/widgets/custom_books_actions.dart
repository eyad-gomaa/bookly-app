import 'package:flutter/material.dart';

import '../../../../../core/widget/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
                childText: 'free',
                textColor: Colors.black,
                backGroundColor: Colors.white,
                leftRadius: Radius.circular(16),
                rightRadius: Radius.circular(0),
              )
          ),
          Expanded(
              child: CustomButton(
                childText: 'Free preview',
                textColor: Colors.white,
                backGroundColor: Colors.deepOrangeAccent,
                leftRadius: Radius.circular(0),
                rightRadius: Radius.circular(16),
              )
          ),

        ],
      ),
    );
  }
}
