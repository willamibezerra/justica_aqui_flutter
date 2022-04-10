import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jus_ma/app/modules/home/view/pages/home_page.dart';
import 'package:jus_ma/app/modules/splash/view/pages/splash_page.dart';

import 'modules/home/view/components/in_app_webb_wiew.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/home',
        routes: <String, WidgetBuilder>{
          '/splash': (BuildContext context) => const SplashPage(),
          '/home': (BuildContext context) => const HomePage(),
          '/webbview': (BuildContext context) => const InAppWebviewPage()
        },
      ),
    );
  }
}
