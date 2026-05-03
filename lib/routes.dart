import 'package:go_router/go_router.dart';
import 'package:test_app/home_screen.dart';
import 'package:test_app/home_viewmodel.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        final homeViewModel = HomeViewmodel();
        return MyHomePage(viewModel: homeViewModel,);
      },
    ),
  ],
);