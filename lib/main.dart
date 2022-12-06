import 'package:application/pages/choose_screen/choose_view.dart';
import 'package:application/pages/make_contract/makecontract_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants/configs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'SM'),
      debugShowCheckedModeBanner: false,
      initialRoute: PageRoutes.chooseScreen,
      getPages: [
        GetPage(
            name: PageRoutes.chooseScreen, page: () => const ChooseScreen()),
        GetPage(
            name: PageRoutes.makeContract, page: () => const MakeContract()),
      ],
    );
  }
}
