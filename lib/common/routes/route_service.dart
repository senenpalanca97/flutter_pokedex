import 'package:flutter/material.dart';
import 'package:flutter_pokedex/ui/pages/pokedex_page.dart';


///
/// define all of your application routes here!!
///
abstract class Routes {

  static const INITIAL = '/initial';
}

///
/// define all of your route services here!!
///
abstract class RouteServices {
  const RouteServices._();

  ///STARTING ROUTE OF APPLICATION
  static const STARTING_POINT = Routes.INITIAL;

  ///--> Add your application routes here!
  static Map<String, Widget Function(BuildContext context)> routes = {
    Routes.INITIAL: (context) => const PokedexPage(),
  };

  ///  add routing animation here!!
  static PageRoute onGenerateRoute(settings, context) {
    /// Custom Route Animations for Custom Pages
    // if (settings.name == "/someRoute") {
    //   return PageRouteBuilder(
    //       settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
    //       pageBuilder: (_, __, ___) => Routes.routes[settings.name]!(context),
    //       transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c));
    // }
    return MaterialPageRoute(
        builder: (_) => RouteServices.routes[settings.name]!(context));
  }
}