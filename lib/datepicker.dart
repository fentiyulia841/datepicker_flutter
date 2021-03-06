import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  // const DatePicker({Key? key}) : super(key: key);
  DateTime selectDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectDate.toString(),
              // "Tanggal Terpilih",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: selectDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2025),
                  //  initialEntryMode: DatePickerEntryMode.calendar,
                  // selectableDayPredicate: (day) {
                  // if ((day.isAfter(
                  //         DateTime.now().subtract(Duration(days: 5)))) &&
                  //     (day.isBefore(DateTime.now().add(Duration(days: 2),
                  //     )))) {
                  //   return true;
                  // }
                  // return false;
                  // }

                  // helpText: "Help Text",
                  // cancelText: "cancel text",
                  // confirmText: "confirm text",
                  // fieldHintText: "Masukkan tanggal lahir anda",
                  // fieldLabelText: "Field Label Text",

                  // builder for theme
                  builder: (context, child) {
                    return Theme(
                      data: ThemeData.dark(), 
                      child: child!
                      );
                  },
                ).then(
                  (value) {
                    if (value != null)
                      setState(
                        () {
                          selectDate = value;
                        },
                      );
                  },
                );
              },
              child: Text("Date Picker"),
            ),
          ],
        ),
      ),
    );
  }
}
