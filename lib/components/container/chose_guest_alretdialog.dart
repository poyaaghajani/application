import 'package:application/constants/colors.dart';
import 'package:flutter/material.dart';

class ChoseGuestAlertDialogContainer extends StatelessWidget {
  final centerText;
  VoidCallback? onPressed;
  ChoseGuestAlertDialogContainer(
      {Key? key, required this.centerText, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: MediaQuery.of(context).size.height / 10,
        width: MediaQuery.of(context).size.width / 2.5,
        decoration: BoxDecoration(
          color: getColors.backgroundAvatar,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            centerText,
            style: TextStyle(
                color: getColors.textColor_chooseScreen,
                fontWeight: FontWeight.w400,
                fontSize: MediaQuery.of(context).size.height / 50),
          ),
        ),
      ),
    );
  }
}
