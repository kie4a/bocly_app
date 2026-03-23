import 'package:app/features/aplash/presentation/home/presentataion/views/book_details_view.dart';
import 'package:app/features/aplash/presentation/home/presentataion/views/view_models/home_view.dart';
import 'package:app/features/aplash/presentation/search/presentation/views/search_view.dart';
import 'package:app/features/aplash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeview = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kHomeview, builder: (context, state) => HomeView()),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}
