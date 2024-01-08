import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practica_bloc/config/router/navigation_handler.dart';

class MainNavigationHandler implements NavigationHandler {
  @override
  Future goHome(context) async {
    return await GoRouter.of(context).pushReplacement('/');
  }

  @override
  Future goToSimpleCubitPage(BuildContext context) async {
    return await GoRouter.of(context).push("/simple-page");
  }
}
