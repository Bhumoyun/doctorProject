import 'dart:async';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Colorrs.dart';
import 'package:flutter/material.dart';

class Time extends StatefulWidget {
  @override
  _TimeState createState() => _TimeState();
}

class _TimeState extends State<Time> {
  DateTime _dateTime = DateTime.now();
  Timer? _time;
  @override
  void initState() {
    _time = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Ranglar.value ? Ranglar2.page21 : Ranglar2.page1,
        title: Text(
          "Kalendar",
          style: TextStyle(fontSize: 18.sp, color: Ranglar.value ? Ranglar2.page22: Ranglar2.page2,),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 16.sp,
            color:Ranglar.value ? Ranglar2.page23 : Ranglar2.page3,
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 100.w,
          height: 100.h,
          child: TextButton(
            child: _dateTime == null
                ? const Text("show Date")
                : Text(_dateTime.toString()),
            onPressed: () async {
              setState(() {
                _dateTime = DateTime.now();
              });
              _dateTime = (await showDatePicker(
                  context: context,
                  initialDate: _dateTime,
                  firstDate: DateTime(1995, DateTime.january),
                  lastDate: DateTime(2025, DateTime.december),
                  initialEntryMode: DatePickerEntryMode.calendar,
                  helpText: "Kunni tanlang",
                  cancelText: "Orqaga",
                  confirmText: "Okey"))!;
              setState(() {});
            },
          ),
        ),
      ),
    );
      }
    );
  }
}
