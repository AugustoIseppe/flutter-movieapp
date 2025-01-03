import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'pages/home_page.dart';
import 'pages/movies_page.dart';
import 'pages/products_page.dart';
import 'utils/app_routes.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const HomePage(),
      initialRoute: AppRoutes.HOME,
      routes: {
        AppRoutes.MOVIES: (_) => const MoviesPage(),
        AppRoutes.PRODUCTS: (_) => const ProductsPage(),
      },
    );
  }
}
