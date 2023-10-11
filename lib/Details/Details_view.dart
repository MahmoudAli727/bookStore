import 'package:book_store_app/Details/widgets/Details_view_body.dart';
import 'package:book_store_app/Home/models/book_model.dart';
import 'package:book_store_app/const.dart';
import 'package:flutter/material.dart';

class Details_view extends StatelessWidget {
  const Details_view({super.key});
  static String routeName = '/Details';
  @override
  Widget build(BuildContext context) {
    book_model data = ModalRoute.of(context)!.settings.arguments as book_model;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Details_view_Body(
        book: data,
      ),
    );
  }
}
