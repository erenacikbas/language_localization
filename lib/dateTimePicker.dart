import 'package:flutter/material.dart';

class DateTimePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // date time picker ın uygulanışı
      child: Center(
        child: RaisedButton(
          color: Colors.greenAccent,
          child: Text(
            "Zaman seçiçiyi göster",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          onPressed: () {
            showDatePicker(
                context: context,
                  locale : const Locale("tr","TR"),
                initialDate: DateTime.now(),
                firstDate: DateTime(2018),
                lastDate: DateTime(2030),
                builder: (BuildContext context, Widget child) {
                  return Theme(
                    data: ThemeData.dark(),
                    child: child,
                  );
                }
              );
          },
        ),
      ),
    );
  }
}
