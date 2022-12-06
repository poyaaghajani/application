import 'package:application/components/container/contract_detail_row.dart';
import 'package:application/components/container/whole_conract.dart';
import 'package:application/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MakeContract extends StatelessWidget {
  const MakeContract({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController(initialPage: 0);

    return Scaffold(
      backgroundColor: getColors.background,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('کاربر میهمان خوش آمدید'),
        centerTitle: true,
        backgroundColor: getColors.dark,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xff6d7587),
                ),
                color: getColors.backgroundAvatar,
                borderRadius: BorderRadius.circular(12),
              ),
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height / 1.4,
              child: WholeContract(),
            ),
          ],
        ),
      ),
    );
  }
}
