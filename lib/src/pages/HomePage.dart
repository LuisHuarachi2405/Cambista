import 'package:flutter/material.dart';
import 'package:projectcambista/src/pages/components/movil/HomePageMovil.dart';
import 'package:projectcambista/src/pages/components/web/HomePageWeb.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (size.width > 500) {
      return HomePageWeb();
    } else {
      return HomePageMovil();
    }
  }
}
