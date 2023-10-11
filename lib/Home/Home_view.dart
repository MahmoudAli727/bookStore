import 'package:book_store_app/Home/widgets/Home_view_Body.dart';
import 'package:book_store_app/book/book_cubit/book_cubit.dart';
import 'package:book_store_app/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home_View extends StatefulWidget {
  const Home_View({super.key});
  static String routeName = "/Home";

  @override
  State<Home_View> createState() => _Home_ViewState();
}

class _Home_ViewState extends State<Home_View> {
  @override
  void initState() {
    BlocProvider.of<BookCubit>(context).getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: Home_View_Body(),
    );
  }
}
