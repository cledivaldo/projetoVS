import '/router/auth_guard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  final void Function(bool isLoggedIn)? onLoginResult;
  final bool showBackButton;
  const LoginPage({Key? key, this.onLoginResult, this.showBackButton = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      // onWillPop: () {
      //   onLoginResult?.call(false);
      //   return SynchronousFuture(true);
      // },
      child: Scaffold(
        appBar: AppBar(
            // automaticallyImplyLeading: showBackButton,
            // title: Text('Login to continue'),
            ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              context.read<AuthService>().isAuthenticated = true;
              onLoginResult?.call(true);
            },
            // ignore: prefer_const_constructors
            child: Text('Login'),
          ),
        ),
      ),
    );
  }
}
