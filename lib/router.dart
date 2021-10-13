import 'package:admin/screens/home/main/home_main_screen.dart';
import 'package:admin/screens/home/screens/auth/login_screen.dart';
import 'package:admin/screens/home/screens/auth/register_screen.dart';
import 'package:admin/screens/home/screens/info_kesahatan/info_kesehatan.dart';
import 'package:admin/screens/home/screens/info_kesahatan/widgets/detail_artikel.dart';
import 'package:admin/screens/home/screens/keranjang/keranjang.dart';
import 'package:admin/screens/home/screens/konsultasi/konsultasi_screen.dart';
import 'package:admin/screens/home/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class Path {
  const Path(this.pattern, this.builder);

  final String pattern;
  final Widget Function(BuildContext, String) builder;
}

class RouteConfiguration {
  /// List of [Path] to for route matching. When a named route is pushed with
  /// [Navigator.pushNamed], the route name is matched with the [Path.pattern]
  /// in the list below. As soon as there is a match, the associated builder
  /// will be returned. This means that the paths higher up in the list will
  /// take priority.
  static List<Path> paths = [
    Path(
      r'^' + DetailArtikel.baseRoute + r'/([\w-]+)$',
      (context, match) => Article.getArticlePage(match),
    ),

    Path(
      r'^' + HomeMainScreen.route,
      (context, match) => HomeMainScreen(),
    ),

    //Auth
    Path(
      r'^' + LoginScreen.route,
      (context, match) => LoginScreen(),
    ),
    Path(
      r'^' + RegisterScreen.route,
      (context, match) => RegisterScreen(),
    ),
    Path(
      r'^' + KonsultasiScreen.route,
      (context, match) => KonsultasiScreen(),
    ),
    Path(
      r'^' + ProfileScreen.route,
      (context, match) => ProfileScreen(),
    ),

    //keranjang
    Path(
      r'^' + KeranjangScreen.route,
      (context, match) => KeranjangScreen(),
    ),

    //blog
    Path(
      r'^' + InfoKesehatan.route,
      (context, match) => InfoKesehatan(),
    ),
  ];

  /// The route generator callback used when the app is navigated to a named
  /// route. Set it on the [MaterialApp.onGenerateRoute] or
  /// [WidgetsApp.onGenerateRoute] to make use of the [paths] for route
  /// matching.
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    for (Path path in paths) {
      final regExpPattern = RegExp(path.pattern);
      if (regExpPattern.hasMatch(settings.name)) {
        final firstMatch = regExpPattern.firstMatch(settings.name);
        final match = (firstMatch.groupCount == 1) ? firstMatch.group(1) : null;
        return MaterialPageRoute<void>(
          builder: (context) => path.builder(context, match),
          settings: settings,
        );
      }
    }

    // If no match was found, we let [WidgetsApp.onUnknownRoute] handle it.
    return null;
  }
}
