import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void navigation({required context, required String path}) {
  GoRouter.of(context).push(
    path,
  );
}

void navigationWithReplace({required context, required String path}) {
  GoRouter.of(context).pushReplacement(
    path,
  );
}

// add this to work
void Navigation({required context, required Widget next}) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => next,
      ));
}

void NavigationWithReplace({required context, required Widget next}) {
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => next,
      ));
}
