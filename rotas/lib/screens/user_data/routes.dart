import 'package:auto_route/auto_route.dart';
import '../user_data/single_field_page.dart';
import '../user_data/user_data_page.dart';
import 'data_collector.dart';

const userDataRoutes = AutoRoute<UserData>(
  path: '/user-data',
  page: UserDataCollectorPage,
  children: [
    AutoRoute(
      path: 'name',
      name: 'NameFieldRoute',
      page: SingleFieldPage,
      // transitionsBuilder: TransitionsBuilders.slideRightWithFade,
    ),
    AutoRoute(
      path: 'favorite-book',
      page: SingleFieldPage,
      name: 'FavoriteBookFieldRoute',
      // transitionsBuilder: TransitionsBuilders.slideRightWithFade,
    ),
    AutoRoute(
      path: 'results',
      page: UserDataPage,
      // transitionsBuilder: TransitionsBuilders.slideRightWithFade,
    ),
  ],
);
