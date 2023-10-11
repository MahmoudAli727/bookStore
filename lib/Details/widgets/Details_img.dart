import 'package:book_store_app/Home/models/book_model.dart';
import 'package:flutter/material.dart';

class Details_img extends StatelessWidget {
  const Details_img({
    super.key,
    required this.book,
  });
  final book_model book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.45,
          height: MediaQuery.of(context).size.height * 0.34,
          child: Image.network(
            book.imageLink!,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
