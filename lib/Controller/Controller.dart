import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DateController extends GetxController {
  var selectedYear = DateTime.now().year.obs;
  var selectedMonth = DateFormat.MMMM().format(DateTime.now()).obs;
  var selectedDate = ''.obs;
  var currenttime = ''.obs;

  List<String> years = List.generate(10, (index) => (2016 + index).toString());
  List<String> months = List.generate(12, (index) => DateFormat.MMMM().format(DateTime(0, index + 1)));
  Map<String, String> events = {};
   Map<String, String> description = {};
    Map<String, String> timedata = {};

  void selectYear(String year) {
    selectedYear.value = int.parse(year);
  }

  void selectMonth(String month) {
    selectedMonth.value = month;
  }

  void saveEvent(String date,String time, String eventName,String Description) {
    events[date] = eventName;
    description[date]=Description;
    timedata[date]=time;
  }
}
