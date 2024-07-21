import 'package:booklyapp/core/errors/failers.dart';
import 'package:booklyapp/core/utils/apiService.dart';
import 'package:booklyapp/features/home/data/models/books/books.dart';
import 'package:booklyapp/features/home/data/repo/homeRepo.dart';
import 'package:dartz/dartz.dart';

class Homerepoimpl implements Homerepo {
  final Apiservice apiservice;

  Homerepoimpl(this.apiservice);
  @override
  Future<Either<Failers, List<Books>>> featchAllBooks() async {
    try {
      var data = await apiservice.get(endPoints: "volumes?Filtering=free-ebooks&q=subject:");
      List<Books> books = [];
      for (var item in data["items"]) {
        books.add(Books.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(serverError(e.toString()));
    }
  }

  @override
  Future<Either<Failers, List<Books>>> featchBestSellerBooks() async {
    try {
      var data = await apiservice.get(endPoints: "volumes?Filtering=free-ebooks&Sorting=newest&q=subject:");
      List<Books> books = [];
      for (var item in data["items"]) {
        books.add(Books.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(serverError(e.toString()));
    }
  }
}
