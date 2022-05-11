import 'package:e_book_app/models/book.dart';
import 'package:flutter/material.dart';
import 'package:e_book_app/themes.dart';

class Authors extends StatelessWidget {
  const Authors({
    Key? key,
    required this.info,
  }) : super(key: key);

  final BookList info;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Hero(
          tag: info.imageUrl,
          child: Container(
            height: 300,
            width: 300,
            margin: EdgeInsets.only(top: 12, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(info.imageUrl),
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          info.title,
          style: semiBoldText14.copyWith(color: blackColor),
        ),
      ],
    );
  }
}
