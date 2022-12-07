import 'package:application/pages/applying_counseling/viw.dart';
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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: GetMaterialApp(
        theme: ThemeData(fontFamily: 'SM'),
        debugShowCheckedModeBanner: false,
        initialRoute: PageRoutes.chooseScreen,
        getPages: [
          GetPage(
              name: PageRoutes.chooseScreen, page: () => const ChooseScreen()),
          GetPage(
              name: PageRoutes.makeContract, page: () => const MakeContract()),
          GetPage(
              name: PageRoutes.applyingcounseling,
              page: () => const ApplyingCounseling()),
        ],
      ),
    );
  }
}
