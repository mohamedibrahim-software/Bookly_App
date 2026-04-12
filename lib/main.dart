import 'package:bookly_app/Hivehlper.dart';
import 'package:bookly_app/core/theme/cubit/cubit/theme_cubit.dart';
import 'package:bookly_app/core/utils/Approuter.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/cart/data/repo/cartrepoimpl.dart';
import 'package:bookly_app/features/cart/presentation/manger/cubitcart/cubit/cart_cubit.dart';
import 'package:bookly_app/features/favorite/data/favrepoimpl.dart';
import 'package:bookly_app/features/favorite/presintation/manger/getfav/cubit/fav_cubit.dart';
import 'package:bookly_app/myblocobserive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.deleteFromDisk();
  await Hivehlper.intialize();
  setupServiceLocator();

  Bloc.observer = MyBlocObserver();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()..changeTheme()),
        BlocProvider(create: (context) => FavCubit(Favrepoimpl())..getfav()),
        BlocProvider(create: (context) => CartCubit(Cartrepoimpl())..getcart()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, state) {
          return MaterialApp.router(
            routerConfig: Approuter.router,
            theme: state,

            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
