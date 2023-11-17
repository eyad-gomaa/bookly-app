import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      decoration: InputDecoration(
          hintText: "Search",
          suffixIcon: IconButton(
            onPressed:(){},
            icon: const Icon(
              Icons.search_rounded,
            size: 30,
              color: Colors.white,
          ),),
          focusedBorder: buildOutlineInputBorder(),
          enabledBorder: buildOutlineInputBorder()

      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
          color: Colors.white
      ),
      borderRadius: BorderRadius.circular(16),
    );
  }
}