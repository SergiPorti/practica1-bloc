import 'package:go_router/go_router.dart';
import 'package:practica_bloc/presentation/pages.dart';

class MainGoRouter {
  MainGoRouter() {
    _buildRouter();
  }

  late GoRouter _router;

  GoRouter get router => _router;

  _buildRouter() {
    _router = GoRouter(
      routes: <GoRoute>[
        GoRoute(
          path: '/',
          builder: (context, state) => const MainPage(),
        ),
        GoRoute(
          path: '/simple-page',
          builder: (context, state) => const SimpleCubitPage(),
        )
      ],
    );
  }
}
