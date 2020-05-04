import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:groupshare/ui/views/auth_view.dart';
import 'package:groupshare/ui/views/home_view.dart';
import 'package:groupshare/ui/views/login_view.dart';
import 'package:groupshare/ui/views/share_list_view.dart';

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
