import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:practica_bloc/config/config.dart';
import 'package:practica_bloc/dependecy_injection/locator.dart';
import 'package:practica_bloc/presentation/blocs/blocs.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter router = MainGoRouter().router;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppThemeCubit>(
            create: (context) => locator<AppThemeCubit>()),
        BlocProvider<UsernameCubit>(
            create: (context) => locator<UsernameCubit>()),
      ],
      child: BlocBuilder<AppThemeCubit, AppThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Bloc Practice',
            routerConfig: router,
            theme: AppThemeCubit.getTheme(state.isDarkMode),
          );
        },
      ),
    );
  }
}
