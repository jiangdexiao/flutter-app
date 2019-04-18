import 'package:flutter/material.dart';

class DatePickerDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DatePickerDemo();
}

class _DatePickerDemo extends State<DatePickerDemo> {
  _showDataPicker() async {
    Locale myLocale = Localizations.localeOf(context);
    var picker = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2016),
        lastDate: DateTime(2019),
        locale: myLocale);
    setState(() {
      _time = picker.toString();
    });
  }

  _showTimePicker() async {
    var picker =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    setState(() {
      _time = picker.toString();
    });
  }

  var _time;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text(_time == null ? '选择日期' : _time),
          onPressed: () => _showDataPicker(),
        ),
        RaisedButton(
          child: Text(_time == null ? '选择时间' : _time),
          onPressed: () => _showTimePicker(),
        ),

      ],
    );
  }
}