import 'package:go_router/go_router.dart';

void navagation({required context, required String path}) {
  GoRouter.of(context).push(
    path,
  );
}
void navagationWithReplace({required context, required String path}) {
  GoRouter.of(context).pushReplacement(
    path,
  );
}
