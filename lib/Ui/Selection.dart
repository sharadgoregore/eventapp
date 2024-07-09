import 'package:eventapp/Controller/Controller.dart';
import 'package:eventapp/Widgets/GetEventData.dart';
import 'package:eventapp/Widgets/GetMonth.dart';
import 'package:eventapp/Widgets/Getyear.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({super.key});

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  final dateController = Get.find<DateController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Events'),
        automaticallyImplyLeading: false,
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [GetYear(), Getmonth()],
          ),
          Expanded(child: GetEventData()),
        ],
      ),
    );
  }
}
