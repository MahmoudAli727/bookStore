// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:book_store_app/Api_Services.dart';
import 'package:book_store_app/Home/models/book_model.dart';
import 'package:equatable/equatable.dart';

part 'book_state.dart';

class BookCubit extends Cubit<BookState> {
  BookCubit() : super(BookInitial());
  Api_Service api_service = Api_Service();
  List<book_model>? books;
  void getData() async {
    emit(BookLoading());
    try {
      books = await api_service.getData();
      emit(BookSuccess(books: books!));
    } catch (e) {
      emit(BookFailure());
    }
  }
}
