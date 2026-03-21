import 'package:app/features/aplash/presentation/home/presentataion/views/book_details_view.dart';
import 'package:app/features/aplash/presentation/home/presentataion/views/view_models/home_view.dart';
import 'package:app/features/aplash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {

static const khomeview= '/homeView';
static const kbookDetailsView= '/bookDetailsView';

static final router = GoRouter(
  routes: [
      GoRoute(
      path: '/',
      builder: (context, state) => SplashView(),
    ),
 GoRoute(
      path: '/homeView',
      builder: (context, state) => HomeView(),
    ),
    GoRoute(
      path: '/bookDetailsView',
      builder: (context, state) => BookDetailsView(),
    ),
    
  ],
);
}

