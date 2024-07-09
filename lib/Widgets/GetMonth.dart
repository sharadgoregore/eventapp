import 'package:eventapp/Controller/Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Getmonth extends StatelessWidget {
  const Getmonth({super.key});

  @override
  Widget build(BuildContext context) {
     final dateController = Get.find<DateController>();
    return  ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      color: Colors.white,
                      child: ListView.separated(
                        itemCount: dateController.months.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Center(
                                child: Text(dateController.months[index])),
                            onTap: () {
                              dateController
                                  .selectMonth(dateController.months[index]);
                              Get.back();
                            },
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const Divider();
                        },
                      ),
                    ),
                  );
                },
                child: Obx(
                    () => Text('Month: ${dateController.selectedMonth.value}')),
              );
            
  }
}