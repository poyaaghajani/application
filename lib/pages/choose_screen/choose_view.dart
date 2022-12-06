import 'dart:ui';

import 'package:application/components/container/choose_mode.dart';
import 'package:application/constants/colors.dart';
import 'package:application/constants/configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:open_file/open_file.dart';

import '../../components/alret_dialogs/chose_guest/chose_guest_dialog.dart';

class ChooseScreen extends StatelessWidget {
  const ChooseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getColors.background,
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 13,
              ),
              Center(
                child: Text(
                  "انتخاب نحوه ورود",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 30,
                    color: getColors.textColor_chooseScreen,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2.5,
                child: const Divider(thickness: 2, color: Colors.grey),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 4.5,
                child: const Divider(thickness: 2, color: Colors.grey),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 11,
                child: const Divider(thickness: 2, color: Colors.grey),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChoseModeContainer(
                    imagePerson: Image.asset('assets/images/man2.png'),
                    title: "کاربر میهمان",
                    helptext: "راهنمای کاربر میهمان",
                    icon: Icons.keyboard_arrow_left_outlined,
                    onPressed_Navigator: () {
                      // Get.toNamed(PageRoutes.makeContract);

                      Get.dialog(ChoseGuestDialog(), barrierDismissible: true);
                    },
                    onPressed_seePdf: () async {
                      final file =
                          await PDFapi.loadAsset("assets/pdf/check.pdf");
                      OpenFile.open(file.path);
                    },
                  ),
                  ChoseModeContainer(
                    imagePerson: Image.asset('assets/images/man1.png'),
                    title: "کاربر اصلی",
                    helptext: "راهنمای کاربر اصلی",
                    onPressed_seePdf: () async {
                      final file =
                          await PDFapi.loadAsset("assets/pdf/check.pdf");
                      OpenFile.open(file.path);
                    },
                    icon: Icons.keyboard_arrow_right_outlined,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
