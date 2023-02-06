import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DateRange extends StatelessWidget {
  const DateRange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Center(child: Text('Date Picker')),
      ),
      backgroundColor: Colors.grey[600],
      body: Center(
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.white,
              offset: const Offset(
                5.0,
                5.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ),
          ]),
          height: 450,
          width: 420,
          child: Card(
              child: SfDateRangePicker(
            backgroundColor: Colors.white70,
            showTodayButton: true,
            allowViewNavigation: true,
            navigationMode: DateRangePickerNavigationMode.scroll,
            todayHighlightColor: Colors.pinkAccent,
            showActionButtons: true,
            selectionMode: DateRangePickerSelectionMode.multiRange,
          )),
        ),
      ),
    ));
  }
}
