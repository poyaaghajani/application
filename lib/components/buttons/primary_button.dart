import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  VoidCallback? onPressed;
  final text;
  PrimaryButton({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: MediaQuery.of(context).size.height / 10,
        width: MediaQuery.of(context).size.width / 1.2,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height / 40),
          ),
        ),
      ),
    );
  }
}
