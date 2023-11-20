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
