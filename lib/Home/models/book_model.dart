// ignore_for_file: camel_case_types

class book_model {
  String? title, desc, publishedDate, imageLink, previewLink;
  book_model({
    this.title,
    this.desc,
    this.publishedDate,
    this.imageLink,
    this.previewLink,
  });

  factory book_model.fromJson(dynamic data) {
    return book_model(
      title: data["volumeInfo"]["title"],
      desc: data["volumeInfo"]["description"],
      imageLink: data["volumeInfo"]["imageLinks"]["smallThumbnail"],
      previewLink: data["volumeInfo"]["previewLink"],
      publishedDate: data["volumeInfo"]["publishedDate"],
    );
  }
}
