// ignore: file_names
import 'package:book_store_app/Details/widgets/Details_img.dart';
import 'package:book_store_app/Details/widgets/customAppBar.dart';
import 'package:book_store_app/Home/models/book_model.dart';
import 'package:book_store_app/style.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Details_view_Body extends StatelessWidget {
  const Details_view_Body({super.key, required this.book});
  final book_model book;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppbar(),
            const SizedBox(height: 30),
            Details_img(book: book),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    Text(
                      "Details",
                      style: Style.titleMedium20.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      book.title!,
                      style: Style.titleMedium20.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      book.desc!,
                      style: Style.titleMedium20.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
