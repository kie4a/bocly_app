import 'package:app/core/errors/failures.dart';
import 'package:app/core/utils/api_service.dart';
import 'package:app/features/home/data/models/book_model/book_model.dart';
import 'package:app/features/home/data/models/book_model/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
        endPoint:
            "volumes?q=flutter&key=AIzaSyAIwm6T4AEk_yAygBjp6aoi7a0hHhUAtsQ&Sorting=subject:Programming",
      );
      List<BookModel> books = [];
      for (var item in data["item"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
