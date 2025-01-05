import 'package:flutter/material.dart';
import 'package:flutter_shop/screen/splash/components/body.dart';
import 'package:flutter_shop/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); // Panggil init di dalam build
// init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
