import 'package:application/constants/colors.dart';
import 'package:application/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MakeContract extends StatefulWidget {
  const MakeContract({Key? key}) : super(key: key);

  @override
  State<MakeContract> createState() => _MakeContractState();
}

class _MakeContractState extends State<MakeContract>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  MyTabController myTabController = Get.put(MyTabController());
  TextEditingController nameController = TextEditingController();
  TextEditingController namefactoryController = TextEditingController();
  TextEditingController factoryAddresController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  final _allkeys = GlobalKey<FormState>();

  TextEditingController name2Controller = TextEditingController();
  TextEditingController employemetYearController = TextEditingController();
  TextEditingController workPlaceController = TextEditingController();
  TextEditingController childCountController = TextEditingController();
  TextEditingController jobTitleController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController bankController = TextEditingController();
  TextEditingController baseController = TextEditingController();
  final _secondKeys = GlobalKey<FormState>();

  TextEditingController startController = TextEditingController();
  TextEditingController endController = TextEditingController();
  TextEditingController dailyPayController = TextEditingController();
  TextEditingController monthlyPayController = TextEditingController();
  TextEditingController helpMoneyController = TextEditingController();
  TextEditingController helpMoney2Controller = TextEditingController();
  TextEditingController homeController = TextEditingController();
  TextEditingController goAndComeController = TextEditingController();
  TextEditingController foodController = TextEditingController();
  TextEditingController attraction1Controller = TextEditingController();
  TextEditingController attraction2Controller = TextEditingController();
  TextEditingController otherController = TextEditingController();
  final _thirdkeys = GlobalKey<FormState>();

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: getColors.background,
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
        body: TabBarView(
          controller: myTabController.tabController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    height: height / 1.4,
                    width: width * 0.95,
                    decoration: BoxDecoration(
                      border: Border.all(color: getColors.darkBlue),
                      color: getColors.backgroundAvatar,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Form(
                      key: _allkeys,
                      child: Column(
                        children: [
                          SizedBox(height: height / 50),
                          const Text(
                            'کارفرما',
                            style:
                                TextStyle(fontSize: 25, color: getColors.dark),
                          ),
                          SizedBox(
                            width: width / 2.5,
                            child: const Divider(
                                thickness: 2, color: getColors.dark),
                          ),
                          SizedBox(height: height / 15),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: width / 60),
                              SizedBox(
                                width: width * 0.73,
                                child: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 13.0, horizontal: 10.0),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 0, style: BorderStyle.none),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(12),
                                        ),
                                      ),
                                    ),
                                    controller: nameController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'لطفا پر کنید';
                                      } else if (value.length > 40) {
                                        return 'متن حداکثر 40 حرف باشد';
                                      }

                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(width: width / 32),
                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    'نام و نام خانوادگی',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ),
                              SizedBox(width: width / 60),
                            ],
                          ),
                          SizedBox(height: height / 30),
                          Row(
                            children: [
                              SizedBox(width: width / 60),
                              SizedBox(
                                width: width * 0.73,
                                child: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 13.0, horizontal: 10.0),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 0, style: BorderStyle.none),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(12),
                                        ),
                                      ),
                                    ),
                                    controller: namefactoryController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'لطفا پر کنید';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(width: width / 32),
                              const Expanded(
                                child: Text(
                                  'نام کارگاه/شرکت/شخص حقیقی',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              SizedBox(width: width / 60),
                            ],
                          ),
                          SizedBox(height: height / 30),
                          Row(
                            children: [
                              SizedBox(width: width / 60),
                              SizedBox(
                                width: width * 0.73,
                                child: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 13.0, horizontal: 10.0),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 0, style: BorderStyle.none),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(12),
                                        ),
                                      ),
                                    ),
                                    controller: factoryAddresController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'لطفا پر کنید';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(width: width / 32),
                              const Expanded(
                                child: Text(
                                  'آدرس کارگاه',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              SizedBox(width: width / 60),
                            ],
                          ),
                          SizedBox(height: height / 21),
                          Row(
                            children: [
                              SizedBox(width: width / 60),
                              SizedBox(
                                width: width * 0.73,
                                child: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 13.0, horizontal: 10.0),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 0, style: BorderStyle.none),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(12),
                                        ),
                                      ),
                                    ),
                                    controller: numberController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'شماره کارگاه را وارد کنید';
                                      }

                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(width: width / 32),
                              const Expanded(
                                child: Text(
                                  'تلفن کارگاه',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              SizedBox(width: width / 60),
                            ],
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              if (_allkeys.currentState!.validate()) {
                                myTabController.tabController.index = 1;
                              }
                            },
                            child: Container(
                              padding: const EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: getColors.darkBlue,
                              ),
                              child: const Text(
                                'صفحه بعد',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: height / 30),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    height: height / 1.4,
                    width: width * 0.95,
                    decoration: BoxDecoration(
                      color: getColors.backgroundAvatar,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: getColors.darkBlue),
                    ),
                    child: Form(
                      key: _secondKeys,
                      child: SingleChildScrollView(
                        child: SizedBox(
                          height: height * 1.4,
                          child: Column(
                            children: [
                              SizedBox(height: height / 50),
                              const Text(
                                'کارگر',
                                style: TextStyle(
                                    fontSize: 25, color: getColors.dark),
                              ),
                              SizedBox(
                                width: width / 2.5,
                                child: const Divider(
                                    thickness: 2, color: getColors.dark),
                              ),
                              SizedBox(height: height / 15),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: width / 60),
                                  SizedBox(
                                    width: width * 0.73,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 13.0, horizontal: 10.0),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                        controller: name2Controller,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'لطفا پر کنید';
                                          } else if (value.length > 40) {
                                            return 'متن حداکثر 40 حرف باشد';
                                          }

                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: width / 32),
                                  const Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        'نام و نام خانوادگی',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: width / 60),
                                ],
                              ),
                              SizedBox(height: height / 20),
                              Row(
                                children: [
                                  SizedBox(width: width / 60),
                                  SizedBox(
                                    width: width * 0.73,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 13.0, horizontal: 10.0),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                        controller: employemetYearController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'لطفا پر کنید';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: width / 32),
                                  const Expanded(
                                    child: Text(
                                      'سال استخدام',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(width: width / 60),
                                ],
                              ),
                              SizedBox(height: height / 20),
                              Row(
                                children: [
                                  SizedBox(width: width / 60),
                                  SizedBox(
                                    width: width * 0.73,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 13.0, horizontal: 10.0),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                        controller: workPlaceController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'لطفا پر کنید';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: width / 32),
                                  const Expanded(
                                    child: Text(
                                      'محل کار',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(width: width / 60),
                                ],
                              ),
                              SizedBox(height: height / 20),
                              Row(
                                children: [
                                  SizedBox(width: width / 60),
                                  SizedBox(
                                    width: width * 0.73,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 13.0, horizontal: 10.0),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                        controller: childCountController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'شماره کارگاه را وارد کنید';
                                          }

                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: width / 32),
                                  const Expanded(
                                    child: Text(
                                      'تعداد فرزند',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(width: width / 60),
                                ],
                              ),
                              SizedBox(height: height / 20),
                              Row(
                                children: [
                                  SizedBox(width: width / 60),
                                  SizedBox(
                                    width: width * 0.73,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 13.0, horizontal: 10.0),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                        controller: jobTitleController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'شماره کارگاه را وارد کنید';
                                          }

                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: width / 50),
                                  const Expanded(
                                    child: Text(
                                      ' عنوان شغلی',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(width: width / 60),
                                ],
                              ),
                              SizedBox(height: height / 20),
                              Row(
                                children: [
                                  SizedBox(width: width / 60),
                                  SizedBox(
                                    width: width * 0.73,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 13.0, horizontal: 10.0),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                        controller: addressController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'شماره کارگاه را وارد کنید';
                                          }

                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: width / 32),
                                  const Expanded(
                                    child: Text(
                                      'آدرس',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(width: width / 60),
                                ],
                              ),
                              SizedBox(height: height / 20),
                              Row(
                                children: [
                                  SizedBox(width: width / 60),
                                  SizedBox(
                                    width: width * 0.73,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 13.0, horizontal: 10.0),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                        controller: phoneController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'شماره کارگاه را وارد کنید';
                                          }

                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: width / 32),
                                  const Expanded(
                                    child: Text(
                                      'تلفن همراه',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(width: width / 60),
                                ],
                              ),
                              SizedBox(height: height / 20),
                              Row(
                                children: [
                                  SizedBox(width: width / 60),
                                  SizedBox(
                                    width: width * 0.73,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 13.0, horizontal: 10.0),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                        controller: bankController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'شماره کارگاه را وارد کنید';
                                          }

                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: width / 50),
                                  const Expanded(
                                    child: Text(
                                      ' شماره حساب بانکی',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(width: width / 60),
                                ],
                              ),
                              SizedBox(height: height / 20),
                              Row(
                                children: [
                                  SizedBox(width: width / 60),
                                  SizedBox(
                                    width: width * 0.73,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 13.0, horizontal: 10.0),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                        controller: baseController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'شماره کارگاه را وارد کنید';
                                          }

                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: width / 32),
                                  const Expanded(
                                    child: Text(
                                      ' پایه سنوات',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(width: width / 60),
                                ],
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      myTabController.tabController.index = 0;
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: getColors.darkBlue,
                                      ),
                                      child: const Text(
                                        'صفحه قبل',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      if (_secondKeys.currentState!
                                          .validate()) {
                                        myTabController.tabController.index = 2;
                                      }
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: getColors.darkBlue,
                                      ),
                                      child: const Text(
                                        'صفحه بعد',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height / 30,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    height: height / 1.4,
                    width: width * 0.95,
                    decoration: BoxDecoration(
                      color: getColors.backgroundAvatar,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: getColors.darkBlue),
                    ),
                    child: Form(
                      key: _thirdkeys,
                      child: SingleChildScrollView(
                        child: SizedBox(
                          height: height * 1.8,
                          child: Column(
                            children: [
                              SizedBox(height: height / 50),
                              const Text(
                                'ایتم های قرارداد',
                                style: TextStyle(
                                    fontSize: 25, color: getColors.dark),
                              ),
                              SizedBox(
                                width: width / 2.5,
                                child: const Divider(
                                    thickness: 2, color: getColors.dark),
                              ),
                              SizedBox(height: height / 15),
                              Row(
                                children: [
                                  SizedBox(width: width / 60),
                                  SizedBox(
                                    width: width * 0.73,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 13.0, horizontal: 10.0),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                        controller: startController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'لطفا پر کنید';
                                          } else if (value.length > 40) {
                                            return 'متن حداکثر 40 حرف باشد';
                                          }

                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: width / 32),
                                  const Expanded(
                                    child: Text(
                                      'تاریخ شروع قرارداد',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(width: width / 60),
                                ],
                              ),
                              SizedBox(height: height / 20),
                              Row(
                                children: [
                                  SizedBox(width: width / 60),
                                  SizedBox(
                                    width: width * 0.73,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 13.0, horizontal: 10.0),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                        controller: endController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'لطفا پر کنید';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: width / 32),
                                  const Expanded(
                                    child: Text(
                                      'تاریخ خاتمه قرارداد',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(width: width / 60),
                                ],
                              ),
                              SizedBox(height: height / 20),
                              Row(
                                children: [
                                  SizedBox(width: width / 60),
                                  SizedBox(
                                    width: width * 0.73,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 13.0, horizontal: 10.0),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                        controller: dailyPayController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'لطفا پر کنید';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: width / 32),
                                  const Expanded(
                                    child: Text(
                                      'حقوق روزانه',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(width: width / 60),
                                ],
                              ),
                              SizedBox(height: height / 20),
                              Row(
                                children: [
                                  SizedBox(width: width / 60),
                                  SizedBox(
                                    width: width * 0.73,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 13.0, horizontal: 10.0),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                        controller: monthlyPayController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'شماره کارگاه را وارد کنید';
                                          }

                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: width / 75),
                                  const Expanded(
                                    child: Text(
                                      'حقوق ماهیانه',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(width: width / 60),
                                ],
                              ),
                              SizedBox(height: height / 20),
                              Row(
                                children: [
                                  SizedBox(width: width / 60),
                                  SizedBox(
                                    width: width * 0.73,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 13.0, horizontal: 10.0),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                        controller: helpMoneyController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'شماره کارگاه را وارد کنید';
                                          }

                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: width / 32),
                                  const Expanded(
                                    child: Text(
                                      'کمک هزینه اولاد',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(width: width / 60),
                                ],
                              ),
                              SizedBox(height: height / 20),
                              Row(
                                children: [
                                  SizedBox(width: width / 60),
                                  SizedBox(
                                    width: width * 0.73,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 13.0, horizontal: 10.0),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                        controller: helpMoney2Controller,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'شماره کارگاه را وارد کنید';
                                          }

                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: width / 32),
                                  const Expanded(
                                    child: Text(
                                      'کمک هزینه عائله مندی',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(width: width / 60),
                                ],
                              ),
                              SizedBox(height: height / 20),
                              Row(
                                children: [
                                  SizedBox(width: width / 60),
                                  SizedBox(
                                    width: width * 0.73,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 13.0, horizontal: 10.0),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                        controller: homeController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'شماره کارگاه را وارد کنید';
                                          }

                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: width / 32),
                                  const Expanded(
                                    child: Text(
                                      'حق مسکن',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(width: width / 60),
                                ],
                              ),
                              SizedBox(height: height / 20),
                              Row(
                                children: [
                                  SizedBox(width: width / 60),
                                  SizedBox(
                                    width: width * 0.73,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 13.0, horizontal: 10.0),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                        controller: goAndComeController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'شماره کارگاه را وارد کنید';
                                          }

                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: width / 32),
                                  const Expanded(
                                    child: Text(
                                      'ایاب ذهاب',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(width: width / 60),
                                ],
                              ),
                              SizedBox(height: height / 20),
                              Row(
                                children: [
                                  SizedBox(width: width / 60),
                                  SizedBox(
                                    width: width * 0.73,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 13.0, horizontal: 10.0),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                        controller: foodController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'شماره کارگاه را وارد کنید';
                                          }

                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: width / 32),
                                  const Expanded(
                                    child: Text(
                                      'غذای گرم',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(width: width / 60),
                                ],
                              ),
                              SizedBox(height: height / 20),
                              Row(
                                children: [
                                  SizedBox(width: width / 60),
                                  SizedBox(
                                    width: width * 0.73,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 13.0, horizontal: 10.0),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                        controller: attraction1Controller,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'شماره کارگاه را وارد کنید';
                                          }

                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: width / 32),
                                  const Expanded(
                                    child: Text(
                                      'جذب 1',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(width: width / 60),
                                ],
                              ),
                              SizedBox(height: height / 20),
                              Row(
                                children: [
                                  SizedBox(width: width / 60),
                                  SizedBox(
                                    width: width * 0.73,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 13.0, horizontal: 10.0),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                        controller: attraction2Controller,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'شماره کارگاه را وارد کنید';
                                          }

                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: width / 32),
                                  const Expanded(
                                    child: Text(
                                      'جذب 2',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(width: width / 60),
                                ],
                              ),
                              SizedBox(height: height / 20),
                              Row(
                                children: [
                                  SizedBox(width: width / 60),
                                  SizedBox(
                                    width: width * 0.73,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 13.0, horizontal: 10.0),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                        controller: otherController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'شماره کارگاه را وارد کنید';
                                          }

                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: width / 32),
                                  const Expanded(
                                    child: Text(
                                      'متفرقه',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(width: width / 60),
                                ],
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      myTabController.tabController.index = 1;
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: getColors.darkBlue,
                                      ),
                                      child: const Text(
                                        'صفحه قبل',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      if (_thirdkeys.currentState!.validate()) {
                                        myTabController.tabController.index = 3;
                                      }
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: getColors.darkBlue,
                                      ),
                                      child: const Text(
                                        'صفحه بعد',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height / 30,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: height / 1.4,
                  width: width * 0.95,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
