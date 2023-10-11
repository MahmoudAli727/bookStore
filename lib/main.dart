import 'package:book_store_app/Details/Details_view.dart';
import 'package:book_store_app/Home/Home_view.dart';
import 'package:book_store_app/book/book_cubit/book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider<BookCubit>(
    create: (_) => BookCubit(),
    child: const bookStore(),
  ));
}

// ignore: camel_case_types
class bookStore extends StatelessWidget {
  const bookStore({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BoohStoreApp',
      initialRoute: "/Home",
      debugShowCheckedModeBanner: false,
      routes: {
        Home_View.routeName: (context) => const Home_View(),
        Details_view.routeName: (context) => const Details_view(),
      },
    );
  }
}
