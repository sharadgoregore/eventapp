import 'package:eventapp/Ui/createEvent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/Controller.dart';

class GetEventData extends StatelessWidget {
  const GetEventData({super.key});

  @override
  Widget build(BuildContext context) {
    final dateController = Get.find<DateController>();
    return Obx(() {
      var eventdata = DateUtils.getDaysInMonth(
          dateController.selectedYear.value,
          dateController.months.indexOf(dateController.selectedMonth.value) +
              1);
      return ListView.separated(
        itemCount: eventdata,
        itemBuilder: (context, index) {
          var date =
              '${dateController.selectedYear.value}-${dateController.selectedMonth.value}-${index + 1}';
          return ListTile(
            title: Text(
              '${index + 1} ${dateController.selectedMonth.value}',
              style: const TextStyle(fontSize: 18),
            ),
            subtitle: Row(
              children: [
                Text(dateController.timedata[date] ?? ''),
                const SizedBox(
                  width: 20,
                ),
                Text(dateController.events[date] ?? ''),
              ],
            ),
            onTap: () {
              dateController.selectedDate.value = date;
              Get.to(() => CreateEventScreen());
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      );
    });
  }
}
