import 'package:auto_route/auto_route.dart';
import '../../router/auth_guard.dart';
import 'book_details_page.dart';
import 'book_list_page.dart';

const booksTab = AutoRoute(
  path: 'books',
  page: EmptyRouterPage,
  name: 'BooksTab',
  children: [
    AutoRoute(path: '', page: BookListScreen),
    AutoRoute(
      path: ':id',
      usesPathAsKey: true,
      page: BookDetailsPage,
      guards: [AuthGuard],
    ),
  ],
);
