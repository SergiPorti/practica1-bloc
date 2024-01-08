import 'package:flutter/material.dart';

abstract class NavigationHandler {
  Future goHome(BuildContext context);
  Future goToSimpleCubitPage(BuildContext context);
}
