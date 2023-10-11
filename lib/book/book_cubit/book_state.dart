// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'book_cubit.dart';

sealed class BookState extends Equatable {
  const BookState();

  @override
  List<Object> get props => [];
}

final class BookInitial extends BookState {}

class BookLoading extends BookState {}

class BookSuccess extends BookState {
  final List<book_model> books;
  const BookSuccess({
    required this.books,
  });
}

class BookFailure extends BookState {}
