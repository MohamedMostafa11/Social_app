import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void navagation({required context, required String path}) {
  GoRouter.of(context).pushNamed(
    path,
  );
}

void navagationWithReplace({required context, required String path}) {
  GoRouter.of(context).pushReplacementNamed(
    path,
  );
}

// add this to work
void Navagation({required context, required Widget next}) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => next,
      ));
}

void NavagationWithReplace({required context, required Widget next}) {
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => next,
      ));
}
