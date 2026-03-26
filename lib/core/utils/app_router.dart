import 'package:app/features/Splash/presentation/views/splash_view.dart';
import 'package:app/features/home/presentataion/views/book_details_view.dart';
import 'package:app/features/home/presentataion/views/home_view.dart';
import 'package:app/features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeview = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kHomeview, builder: (context, state) => HomeView()),
      GoRoute(path: kBookDetailsView,builder: (context, state) => BookDetailsView(),),
      GoRoute(path: kSearchView, builder: (context, state) => SearchView()),
    ],
  );
}
