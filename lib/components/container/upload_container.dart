import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadContainer extends StatefulWidget {
  final VoidCallback? onPressed;

  const UploadContainer({Key? key, this.onPressed}) : super(key: key);

  @override
  State<UploadContainer> createState() => _UploadContainerState();
}

class _UploadContainerState extends State<UploadContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(15),
        dashPattern: [
          MediaQuery.of(context).size.height / 100,
          MediaQuery.of(context).size.height / 200
        ],
        strokeWidth: MediaQuery.of(context).size.height / 400,
        color: Colors.black87,
        child: Container(
          height: MediaQuery.of(context).size.height / 6,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.0),
              borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: GestureDetector(
              onTap: widget.onPressed,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.cloud_upload_rounded,
                    color: Colors.black,
                    size: MediaQuery.of(context).size.height / 10,
                  ),
                  Text(
                    "اپلود عکس",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
