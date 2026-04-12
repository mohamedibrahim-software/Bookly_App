import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/bottomnavbar/bottomnavbar.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:bookly_app/features/home/data/repo/HomerepoImpl.dart';
import 'package:bookly_app/features/home/presentation/manger/fetchitembook/cubit/items_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/Bookdetailsview.dart';
import 'package:bookly_app/features/onbording/presentation/view/onbordingview.dart';
import 'package:bookly_app/features/search/presentation/view/Searchview.dart';
import 'package:bookly_app/features/splash/presentation/view/Splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class Approuter {
  static const bookedetailsview = '/detailsview';
  static const searchview = '/searchview';
  static const bottomnav = '/bottomnav';
  static const onbording = '/onbording';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: bottomnav, builder: (context, state) => Bottomnavbar()),

      GoRoute(
        path: bookedetailsview,
        builder: (context, state) => BlocProvider(
          create: (context) => ItemsCubit(getit.get<Homerepoimpl>()),
          child: Bookdetailsview(bookmodel: state.extra as Bookmodel),
        ),
      ),
      GoRoute(path: searchview, builder: (context, state) => Searchview()),
      GoRoute(path: onbording, builder: (context, state) => Onbordingview()),
    ],
  );
}
