import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:groupshare/ui/auth/auth_view.dart';
import 'package:groupshare/ui/home/home_view.dart';
import 'package:groupshare/ui/login/login_view.dart';
import 'package:groupshare/ui/share/list/share_list_view.dart';
import 'package:groupshare/ui/share/new/share_new_view.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(builder: (_) => HomeView());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginView());
      case '/auth':
        return MaterialPageRoute(builder: (_) => AuthView());
      case '/share/list':
        return MaterialPageRoute(builder: (_) => ShareListView());
      case '/share/new':
        return MaterialPageRoute(builder: (_) => ShareNewView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
