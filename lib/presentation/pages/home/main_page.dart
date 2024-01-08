import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practica_bloc/config/config.dart';
import 'package:practica_bloc/dependecy_injection/locator.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = locator<AppThemeCubit>();

    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('MainPage'),
            const SizedBox(height: 55),
            IconButton(
              onPressed: () => theme.updateTheme(),
              icon: theme.state.isDarkMode
                  ? const Icon(Icons.dark_mode_outlined)
                  : const Icon(Icons.sunny),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () =>
              locator<NavigationHandler>().goToSimpleCubitPage(context),
          child: const Icon(Icons.navigation),
        ));
  }
}
