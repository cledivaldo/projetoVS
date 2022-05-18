// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../router/router.gr.dart';

class MyBooksPage extends StatelessWidget {
  final String? filter;

  // ignore: prefer_const_constructors_in_immutables
  MyBooksPage({Key? key, @queryParam this.filter = 'none'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'My Books -> filter: $filter',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 16),
            Text(
              'Fragment Support? ${context.routeData.fragment}',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                context.navigateTo(
                  SettingsTab(tab: 'newSegment', query: 'newQuery'),
                );
              },
              child: Text('navigate to /settings/newSegment'),
            ),
            ElevatedButton(
              onPressed: () {
                context.navigateBack();
              },
              child: Text('Navigate back'),
            )
          ],
        ),
      ),
    );
  }
}
