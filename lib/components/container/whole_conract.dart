import 'package:application/components/container/contract_detail_row.dart';
import 'package:application/constants/colors.dart';
import 'package:flutter/material.dart';

class WholeContract extends StatelessWidget {
  const WholeContract({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController(initialPage: 0);

    return PageView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      controller: _pageController,
      itemBuilder: (context, position) {
        if (position == 0) {
          return Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                "کارفرما",
                style:
                    TextStyle(fontSize: MediaQuery.of(context).size.width / 18),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: const Divider(
                  color: getColors.dark,
                  thickness: 1.3,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              ContractDetailRow(
                  title: 'نام و نام خانوادگی', inputType: TextInputType.text),
              SizedBox(height: MediaQuery.of(context).size.height / 45),
              ContractDetailRow(
                  title: 'نام کاراگاه/شرکت/شخص حقیقی',
                  inputType: TextInputType.text),
              SizedBox(height: MediaQuery.of(context).size.height / 45),
              ContractDetailRow(
                  title: 'آدرس کارگاه', inputType: TextInputType.text),
              SizedBox(height: MediaQuery.of(context).size.height / 28),
              ContractDetailRow(
                  title: 'تلفن کارگاه', inputType: TextInputType.number),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  _pageController.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn);
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
              SizedBox(
                height: MediaQuery.of(context).size.height / 55,
              ),
            ],
          );
        }

        if (position == 1) {
          return SingleChildScrollView(
            child: SizedBox(
              height: 750,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  Text(
                    "کارگر",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 18),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Divider(
                      color: getColors.dark,
                      thickness: 1.3,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 20),
                  ContractDetailRow(
                      title: 'نام و نام خانوادگی',
                      inputType: TextInputType.text),
                  SizedBox(height: MediaQuery.of(context).size.height / 35),
                  ContractDetailRow(
                      title: 'سال استخدام', inputType: TextInputType.number),
                  SizedBox(height: MediaQuery.of(context).size.height / 35),
                  ContractDetailRow(
                      title: 'محل کار', inputType: TextInputType.text),
                  SizedBox(height: MediaQuery.of(context).size.height / 35),
                  ContractDetailRow(
                      title: 'تعداد فرزند', inputType: TextInputType.number),
                  SizedBox(height: MediaQuery.of(context).size.height / 35),
                  ContractDetailRow(
                      title: 'عنوان شغلی', inputType: TextInputType.text),
                  SizedBox(height: MediaQuery.of(context).size.height / 35),
                  ContractDetailRow(
                      title: 'آدرس', inputType: TextInputType.text),
                  SizedBox(height: MediaQuery.of(context).size.height / 35),
                  ContractDetailRow(
                      title: 'تلفن همراه', inputType: TextInputType.number),
                  SizedBox(height: MediaQuery.of(context).size.height / 35),
                  ContractDetailRow(
                      title: 'شماره حساب بانکی',
                      inputType: TextInputType.number),
                  SizedBox(height: MediaQuery.of(context).size.height / 35),
                  ContractDetailRow(
                      title: ' پایه سنوات', inputType: TextInputType.text),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _pageController.previousPage(
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastOutSlowIn);
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
                          _pageController.nextPage(
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastOutSlowIn);
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
                    height: MediaQuery.of(context).size.height / 55,
                  ),
                ],
              ),
            ),
          );
        }
        if (position == 2) {
          return SingleChildScrollView(
            child: SizedBox(
              height: 950,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  Text(
                    "آیتم های قرارداد",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 18),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Divider(
                      color: getColors.dark,
                      thickness: 1.3,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 20),
                  ContractDetailRow(
                      title: 'تاریخ شروع قرارداد',
                      inputType: TextInputType.number),
                  SizedBox(height: MediaQuery.of(context).size.height / 35),
                  ContractDetailRow(
                      title: "تاریخ خاتمه قرارداد",
                      inputType: TextInputType.number),
                  SizedBox(height: MediaQuery.of(context).size.height / 35),
                  ContractDetailRow(
                      title: 'حقوق روزانه', inputType: TextInputType.number),
                  SizedBox(height: MediaQuery.of(context).size.height / 35),
                  ContractDetailRow(
                      title: 'حقوق ماهیانه', inputType: TextInputType.number),
                  SizedBox(height: MediaQuery.of(context).size.height / 35),
                  ContractDetailRow(
                      title: "کمک هزینه اولاد", inputType: TextInputType.text),
                  SizedBox(height: MediaQuery.of(context).size.height / 35),
                  ContractDetailRow(
                      title: 'کمک هزینه ئاعله مندی',
                      inputType: TextInputType.text),
                  SizedBox(height: MediaQuery.of(context).size.height / 35),
                  ContractDetailRow(
                      title: 'حق مسکن', inputType: TextInputType.text),
                  SizedBox(height: MediaQuery.of(context).size.height / 35),
                  ContractDetailRow(
                      title: 'ایاب ذهاب', inputType: TextInputType.number),
                  SizedBox(height: MediaQuery.of(context).size.height / 35),
                  ContractDetailRow(
                      title: 'غذای گرم', inputType: TextInputType.text),
                  SizedBox(height: MediaQuery.of(context).size.height / 35),
                  ContractDetailRow(
                      title: 'جذب 1', inputType: TextInputType.text),
                  SizedBox(height: MediaQuery.of(context).size.height / 35),
                  ContractDetailRow(
                      title: 'جذب 2', inputType: TextInputType.text),
                  SizedBox(height: MediaQuery.of(context).size.height / 35),
                  ContractDetailRow(
                      title: 'متفرقه', inputType: TextInputType.text),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _pageController.previousPage(
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastOutSlowIn);
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
                          _pageController.nextPage(
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastOutSlowIn);
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
                    height: MediaQuery.of(context).size.height / 55,
                  ),
                ],
              ),
            ),
          );
        } else {
          return SingleChildScrollView(
            child: SizedBox(
              height: 500,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  Text(
                    "سایر شرایط",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 18),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Divider(
                      color: getColors.dark,
                      thickness: 1.3,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 20),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _pageController.previousPage(
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastOutSlowIn);
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
                          _pageController.nextPage(
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastOutSlowIn);
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
                    height: MediaQuery.of(context).size.height / 55,
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
