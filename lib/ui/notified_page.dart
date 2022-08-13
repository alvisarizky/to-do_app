import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/ui/theme.dart';
import 'package:get/get.dart';

class NotifiedPage extends StatelessWidget {
  final String? label;
  const NotifiedPage({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.theme.backgroundColor,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
            color: Get.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        title: Text(
          'Detail To-do List',
          style: subHeadingStyle.copyWith(
            color: Get.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 250,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Get.isDarkMode ? Colors.grey.shade200 : Colors.grey.shade700,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Title :',
                    style: titleStyle.copyWith(
                      color: Get.isDarkMode ? Colors.black : Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    this.label.toString().split("|")[0],
                    style: titleStyle.copyWith(
                      color: Get.isDarkMode ? Colors.black : Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Note :',
                    style: titleStyle.copyWith(
                      color: Get.isDarkMode ? Colors.black : Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    this.label.toString().split("|")[1],
                    style: titleStyle.copyWith(
                      color: Get.isDarkMode ? Colors.black : Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Date :',
                    style: titleStyle.copyWith(
                      color: Get.isDarkMode ? Colors.black : Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    this.label.toString().split("|")[2],
                    style: titleStyle.copyWith(
                      color: Get.isDarkMode ? Colors.black : Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Time :',
                    style: titleStyle.copyWith(
                      color: Get.isDarkMode ? Colors.black : Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        this.label.toString().split("|")[3],
                        style: titleStyle.copyWith(
                          color: Get.isDarkMode ? Colors.black : Colors.white,
                        ),
                      ),
                      Text(
                        ' - ',
                        style: titleStyle.copyWith(
                          color: Get.isDarkMode ? Colors.black : Colors.white,
                        ),
                      ),
                      Text(
                        this.label.toString().split("|")[4],
                        style: titleStyle.copyWith(
                          color: Get.isDarkMode ? Colors.black : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Remind :',
                    style: titleStyle.copyWith(
                      color: Get.isDarkMode ? Colors.black : Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    this.label.toString().split("|")[5] + ' Minute before event',
                    style: titleStyle.copyWith(
                      color: Get.isDarkMode ? Colors.black : Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Repeat :',
                    style: titleStyle.copyWith(
                      color: Get.isDarkMode ? Colors.black : Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    this.label.toString().split("|")[6],
                    style: titleStyle.copyWith(
                      color: Get.isDarkMode ? Colors.black : Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
