import 'package:application/pages/choose_screen/choose_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants/configs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'SM'),
      debugShowCheckedModeBanner: false,
      initialRoute: PageRoutes.chooseScreen,
      getPages: [
        GetPage(
            name: PageRoutes.chooseScreen, page: () => const ChooseScreen()),
      ],
    );
  }
}
