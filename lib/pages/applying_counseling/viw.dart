import 'dart:io';

import 'package:application/components/buttons/primary_button.dart';
import 'package:application/components/container/upload_container.dart';
import 'package:application/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ApplyingCounseling extends StatefulWidget {
  const ApplyingCounseling({Key? key}) : super(key: key);

  @override
  State<ApplyingCounseling> createState() => _ApplyingCounselingState();
}

class _ApplyingCounselingState extends State<ApplyingCounseling> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController desController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  List<String> allFile = [];

  @override
  Widget build(BuildContext context) {
    Future<void> uploadImage() async {
      final imagePicker = ImagePicker();
      final XFile? pickedFile = await imagePicker.pickImage(
          source: ImageSource.gallery, imageQuality: 60);

      if (pickedFile != null) {
        allFile.add(pickedFile.path);
        print(allFile.length);
        setState(() {});
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'مشاوره روابط کار و بیمه تامین اجتماعی',
          style: TextStyle(fontSize: MediaQuery.of(context).size.width / 25),
        ),
        centerTitle: true,
        backgroundColor: getColors.dark,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Align(
                    alignment: Alignment.topRight,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    maxLines: 3,
                    decoration: const InputDecoration(
                      hintText: "متن مشاوره",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                    controller: desController,

                    /// The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'لطفا پر کنید';
                      } else if (value.length < 20) {
                        return 'متن حداقل 20 حرف باشد';
                      }

                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                UploadContainer(
                  onPressed: () async {
                    uploadImage();
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                if (allFile.length > 0)
                  Container(
                    height: MediaQuery.of(context).size.height / 7,
                    width: double.infinity,
                    child: ListView.builder(
                      shrinkWrap: true,
                      restorationId: allFile.length.toString(),
                      scrollDirection: Axis.horizontal,
                      itemCount: allFile.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Container(
                                child: Image.file(File(allFile[index])),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                              ),
                              Positioned(
                                  child: MaterialButton(
                                      onPressed: () {
                                        allFile.removeAt(index);
                                        setState(() {});
                                      },
                                      child: Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      )))
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    maxLines: 1,
                    decoration: const InputDecoration(
                      hintText: "نام و نام خانوادگی",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                    controller: nameController,

                    /// The validator receives the text that the user has entered.
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(),
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                    controller: emailController,

                    /// The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'لطفا پر کنید';
                      } else
                        return null;
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    maxLines: 1,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(),
                      hintText: "موبایل",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                    controller: phoneNumberController,

                    /// The validator receives the text that the user has entered.
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: PrimaryButton(
                    text: "تایید",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print("true");
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
