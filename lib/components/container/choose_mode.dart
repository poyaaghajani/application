import 'package:application/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/circular_reveal_clipper.dart';

class ChoseModeContainer extends StatelessWidget {
  final title;
  final helptext;
  final imagePerson;
  IconData icon;

  VoidCallback? onPressed_Navigator;
  VoidCallback? onPressed_seePdf;

  ChoseModeContainer(
      {Key? key,
      required this.title,
      required this.helptext,
      required this.imagePerson,
      required this.icon,
      this.onPressed_Navigator,
      this.onPressed_seePdf})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.5,
      height: MediaQuery.of(context).size.height / 2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70), color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.height / 12,
                    backgroundColor: getColors.backgroundAvatar,
                    child: imagePerson,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              GestureDetector(
                onTap: onPressed_seePdf,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                  child: Center(
                    child: Text(
                      helptext,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[500]),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.cyan[600],
              ),
              child: GestureDetector(
                onTap: onPressed_Navigator,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: MediaQuery.of(context).size.height / 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
