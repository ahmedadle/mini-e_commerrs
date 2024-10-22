import 'package:flutter/material.dart';
import 'package:shoping_app/core/routes/routes_name.dart';
import 'package:shoping_app/pades/Home_page.dart';
import 'package:shoping_app/pades/prodact_view.dart';

class Approute {
  static Route<dynamic> generate(RouteSettings? settigs) {
    switch (settigs?.name) {
      case RoutesName.home:
    return   MaterialPageRoute(builder: (_) {
          return const HomePage();
        });
      case RoutesName.prodactView:
      return  MaterialPageRoute(builder: (_) {
          return const ProdactView(des: '', img: '', price: '', titel: '');
        });
        
      default:
        throw Exception('Route not found!');
    }
  }
}
