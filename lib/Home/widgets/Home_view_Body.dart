// ignore_for_file: unnecessary_string_interpolations

import 'package:book_store_app/Details/Details_view.dart';
import 'package:book_store_app/book/book_cubit/book_cubit.dart';
import 'package:book_store_app/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home_View_Body extends StatelessWidget {
  const Home_View_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<BookCubit, BookState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is BookSuccess) {
            // var data = BlocProvider.of<BookCubit>(context).book;
            return SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: state.books.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Padding(
                            padding: const EdgeInsets.only(bottom: 25),
                            child: GestureDetector(
                                onTap: () {
                                  if (state.books[index].desc != null) {
                                    Navigator.pushNamed(
                                        context, Details_view.routeName,
                                        arguments: state.books[index]);
                                  }
                                },
                                child: Container(
                                    padding: const EdgeInsets.all(8),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        color: kPrimaryColor,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: SizedBox(
                                          width: 100,
                                          height: 150,
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(15)),
                                            child: Image.network(
                                              state.books[index].imageLink!,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Text(
                                        "${state.books[index].title}",
                                        style: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        "${state.books[index].desc ?? "there is no thing"}",
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ])))));
                  }),
            );
          } else if (state is BookFailure) {
            return const Text("there is problem");
          } else if (state is BookLoading) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return const Center(
              child: Text(
                "else",
                style: TextStyle(color: Colors.white),
              ),
            );
          }
        },
      ),
    );
  }
}
