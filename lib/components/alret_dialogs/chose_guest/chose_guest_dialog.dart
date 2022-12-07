import 'package:application/components/container/chose_guest_alretdialog.dart';
import 'package:application/constants/configs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChoseGuestDialog extends StatelessWidget {
  const ChoseGuestDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: AlertDialog(
          title: Text(
            "درخواست خود را وارد کنید",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: MediaQuery.of(context).size.height / 40),
          ),
          backgroundColor: Colors.grey,
          content: Padding(
            padding: EdgeInsets.only(top: 15, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                ChoseGuestAlertDialogContainer(
                  centerText: "پیگیری مشاوره",
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 60,
                ),
                ChoseGuestAlertDialogContainer(
                  onPressed: () => Get.toNamed(PageRoutes.applyingcounseling),
                  centerText: "در خواست مشاوره",
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 60,
                ),
                ChoseGuestAlertDialogContainer(
                  onPressed: () => Get.toNamed(PageRoutes.makeContract),
                  centerText: "قرارداد",
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 70,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: MediaQuery.of(context).size.height / 30,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        onWillPop: () async => false);
  }
}
