import 'package:booklyapp/features/home/data/models/booksmodel.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/bookswidget.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class BookListView extends StatelessWidget {
  const BookListView({super.key});
  final List<Booksmodel> books = const [
    Booksmodel(
        bookName: "Harry Potter ",
        authorName: "J.K. Rowling",
        price: "19.99 €",
        rate: "⭐️4.8(2390)",
        image: "assets/images/book1.jpg"),
    Booksmodel(
        bookName: "The Jungle Book ",
        authorName: "Rudyard Kipling",
        price: "19.99 €",
        rate: "⭐️4.8(2390)",
        image: "assets/images/test_image.png"),
    Booksmodel(
        bookName: "Star Wars ",
        authorName: "James Kahn",
        price: "19.99 €",
        rate: "⭐️4.8(2390)",
        image: "assets/images/book2.jpg"),
    Booksmodel(
        bookName: "Harry Potter ",
        authorName: "J.K. Rowling",
        price: "19.99 €",
        rate: "⭐️4.8(2390)",
        image: "assets/images/book1.jpg"),
    Booksmodel(
        bookName: "The Jungle Book ",
        authorName: "Rudyard Kipling",
        price: "19.99 €",
        rate: "⭐️4.8(2390)",
        image: "assets/images/test_image.png"),
    Booksmodel(
        bookName: "Star Wars ",
        authorName: "James Kahn",
        price: "19.99 €",
        rate: "⭐️4.8(2390)",
        image: "assets/images/book2.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 460,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: books.length,
          itemBuilder: (context, index) {
            return Bookswidget(bModel: books[index]);
          },
        ),
      ),
    );
  }
}
