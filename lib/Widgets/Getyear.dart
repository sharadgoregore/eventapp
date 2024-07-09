import 'package:eventapp/Controller/Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetYear extends StatelessWidget {
  const GetYear({super.key});

  @override
  Widget build(BuildContext context) {
      final dateController = Get.find<DateController>();
    return   ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      color: const Color(0xFFFFFFFF),
                      child: ListView.separated(
                        itemCount: dateController.years.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Center(
                                child: Text(dateController.years[index])),
                            onTap: () {
                              dateController
                                  .selectYear(dateController.years[index]);
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
                    () => Text('Year: ${dateController.selectedYear.value}')),
              );
             
  }
}