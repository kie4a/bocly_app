import 'package:app/features/home/data/models/book_model/book_model.dart';
import 'package:app/features/home/data/models/book_model/repos/home_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepol) : super(NewsetBooksInitial());
   final HomeRepo homeRepol;
  Future<void> fetchNewsetBooks() async {
    emit(NewsetBooksLoading());
    var result = await homeRepol.fetchFeaturedBooks();

    result.fold(
      (failure) => {emit(NewsetBooksfailure(failure.errMassage))},
      (books) => {emit(NewsetBooksSuccess(books))},
    );
  }
}
