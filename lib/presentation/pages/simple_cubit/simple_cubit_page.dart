import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practica_bloc/dependecy_injection/locator.dart';
import 'package:practica_bloc/presentation/blocs/blocs.dart';

class SimpleCubitPage extends StatelessWidget {
  const SimpleCubitPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final UsernameCubit usernameCubit = context.watch<UsernameCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text('AppBar SimpleCubitPage')),
      body: Center(
        child: BlocBuilder<UsernameCubit, String>(
          buildWhen: (previous, current) => previous != current,
          builder: (context, username) {
            return Text(username);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // usernameCubit.setUsername('Joselito');
          locator<UsernameCubit>().setUsername('Joselito');
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
