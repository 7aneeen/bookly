import 'package:booklyapp/core/errors/failers.dart';
import 'package:booklyapp/features/home/data/models/books/books.dart';
import 'package:dartz/dartz.dart';

abstract class Homerepo {
  Future<Either<Failers, List<Books>>> featchAllBooks();
  Future<Either<Failers, List<Books>>> featchBestSellerBooks();
}
