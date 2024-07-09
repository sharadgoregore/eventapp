import 'package:eventapp/Controller/Controller.dart';
import 'package:eventapp/Ui/Selection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateEventScreen extends StatelessWidget {
  final dateController = Get.find<DateController>();

  final TextEditingController eventNameController = TextEditingController();
  final TextEditingController eventDescriptionController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    var currentTime = "${now.hour}:${now.minute}:${now.second}";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Create Event'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(
          () => SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 22,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 140,
                      child: Text(
                        "Date",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    Container(
                      width: 230,
                      padding: const EdgeInsets.all(10),
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Center(
                          child: Text(dateController.selectedDate.value,
                              style: const TextStyle(fontSize: 16))),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 140,
                      child: Text(
                        "Time",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    Container(
                      width: 230,
                      padding: const EdgeInsets.all(10),
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Center(
                          child: Text(currentTime,
                              style: const TextStyle(fontSize: 16))),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 140,
                      child: Text(
                        "Title",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      width: 230,
                      child: TextField(
                        controller: eventNameController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 140,
                      child: Text(
                        "Description",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      width: 230,
                      child: TextField(
                        controller: eventDescriptionController,
                        maxLines: 4,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                ElevatedButton(
                  onPressed: () {
                    dateController.saveEvent(
                        dateController.selectedDate.value,
                        currentTime,
                        eventNameController.text,
                        eventDescriptionController.text);
                    Get.to(() => SelectionScreen());
                   
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      'Save Event',
                      style: TextStyle(fontSize: 17),
                    ),
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
