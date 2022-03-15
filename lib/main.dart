import 'package:consumindo_api/home/HomePage.dart';
import 'package:consumindo_api/home/http/http_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => Homepage(),
          children: [
            GetPage(
              name: '/http',
              page: () => const HttpPage(),
            ),
          ],
        ),
      ],
    );
  }
}
