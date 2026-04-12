import 'package:bookly_app/core/theme/cubit/cubit/theme_cubit.dart';
import 'package:bookly_app/core/utils/AppImges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustemAppBar extends StatelessWidget {
  const CustemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      actionsPadding: EdgeInsets.symmetric(horizontal: 14, vertical: 7),
      actions: [
        Image.asset(Appimges.logo, height: 18),
        Spacer(),
        IconButton(
          onPressed: () {
            BlocProvider.of<ThemeCubit>(context).changeTheme();
          },
          icon: context.watch<ThemeCubit>().isdarth
              ? Icon(Icons.dark_mode)
              : Icon(Icons.light_mode),
        ),
      ],
    );
  }
}
