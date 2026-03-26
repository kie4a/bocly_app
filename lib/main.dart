import 'package:app/constants.dart';
import 'package:app/core/utils/app_router.dart';
import 'package:app/core/utils/service_locator.dart';
import 'package:app/features/home/data/models/book_model/repos/home_repo_impl.dart';
import 'package:app/features/home/presentataion/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:app/features/home/presentataion/manger/newset_books_cubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServicLocat();
  runApp(const BoolApp());
}

class BoolApp extends StatelessWidget {
  const BoolApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
        BlocProvider(
          create: (context) => NewsetBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kprimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
