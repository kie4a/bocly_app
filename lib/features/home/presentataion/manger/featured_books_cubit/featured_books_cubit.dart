import 'package:app/features/home/data/models/book_model/book_model.dart';
import 'package:app/features/home/data/models/book_model/repos/home_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepol) : super(FeaturedBooksInitial());
  final HomeRepo homeRepol;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoding());
    var result = await homeRepol.fetchFeaturedBooks();

    result.fold(
      (failure) => {emit(FeaturedBooksFilure(failure.errMassage))},
      (books) => {emit(FeaturedBooksSuccess(books))},
    );
  }
}
