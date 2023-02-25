import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Info.dart';
import 'Colorrs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LastPage extends StatefulWidget {
  int? index;
  LastPage(this.index);
  @override
  _LastPageState createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  double _value = 3.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Ranglar.value ? Colors.black : Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.r,
              backgroundColor: Ranglar.value ? Colors.black : Colors.grey,
              backgroundImage: AssetImage(Info.assets1[widget.index!]),
            ),
            SizedBox(
              width: 12.w,
            ),
            Container(
              width: 100.w,
              height: 20.h,
              child: Text(
                Info.name[widget.index!],
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Ranglar.value
                        ? Colors.white
                        : Color.fromRGBO(34, 43, 69, 1)),
              ),
            ),
          ],
        ),
        leading: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.pop(context);
            });
          },
          child: Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
                color: Ranglar.value
                    ? Colors.black
                    : Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(10.r)),
            child: Icon(
              Icons.arrow_back,
              color:
                  Ranglar.value ? Colors.white : Color.fromRGBO(34, 43, 69, 1),
              size: 16.sp,
            ),
          ),
        ),
        elevation: 0,
        backgroundColor:
            Ranglar.value ? Colors.black : Color.fromRGBO(255, 255, 255, 1),
        actions: [
          Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: Ranglar.value
                  ? Colors.black
                  : Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Icon(
              Icons.phone_outlined,
              color:
                  Ranglar.value ? Colors.white : Color.fromRGBO(35, 32, 32, 1),
            ),
          ),
          Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: Ranglar.value
                  ? Colors.black
                  : Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Icon(
              Icons.videocam_outlined,
              color:
                  Ranglar.value ? Colors.white : Color.fromRGBO(35, 32, 32, 1),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 27.w),
                  width: 257.w,
                  height: 90.h,
                  decoration: BoxDecoration(
                    color: Ranglar.value
                        ? Colors.white
                        : Color.fromRGBO(62, 100, 255, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.r),
                        topRight: Radius.circular(15.r),
                        bottomLeft: Radius.circular(15.r)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: 20.w, left: 15.w, top: 18.h, bottom: 18.h),
                    child: Text(
                      "Ассалому алайкум, хаво узгарганда бошим азгина огриб туради, нима килсам булади ?",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Ranglar.value
                              ? Colors.black
                              : Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 9.h,
            ),
            Container(
              width: double.infinity.sw,
              height: 14.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8.w),
                    width: 31.w,
                    height: 14.h,
                    child: Text(
                      "10:13",
                      style: TextStyle(
                          color: Ranglar.value
                              ? Colors.white
                              : Color.fromRGBO(107, 119, 154, 1),
                          fontSize: 12.sp),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 27.w),
                    width: 10.67.w,
                    height: 8.h,
                    child: Image.asset(
                      "assets/Tick.png",
                      color: Ranglar.value
                          ? Colors.white
                          : Color.fromRGBO(62, 100, 255, 1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 27.w),
                  width: 229.w,
                  height: 90.h,
                  decoration: BoxDecoration(
                    color: Ranglar.value
                        ? Color.fromRGBO(107, 119, 154, 1)
                        : Color.fromRGBO(241, 244, 247, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.r),
                        topRight: Radius.circular(15.r),
                        bottomRight: Radius.circular(15.r)),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(right: 20.w, left: 15.w, top: 18.h),
                    child: Text(
                      "Добрый день, если голова болить когда будет дождь тогда у Вас скорее всего мигрень",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Ranglar.value
                              ? Colors.white
                              : Color.fromRGBO(107, 119, 154, 1)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 9.h,
            ),
            Container(
              margin: EdgeInsets.only(right: 27.w),
              width: double.infinity.sw,
              height: 14.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 27.w),
                    height: 14.h,
                    child: Text(
                      "10:14",
                      style: TextStyle(
                          color: Ranglar.value
                              ? Colors.white
                              : Color.fromRGBO(107, 119, 154, 1),
                          fontSize: 12.sp),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 27.w),
                  width: 110.w,
                  height: 103.h,
                  decoration: BoxDecoration(
                    color: Ranglar.value
                        ? Colors.white
                        : Color.fromRGBO(62, 100, 255, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.r),
                        topRight: Radius.circular(15.r),
                        bottomLeft: Radius.circular(15.r)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: 14.w, left: 16.w, top: 18.h, bottom: 31.w),
                    child: Text(
                      "как то его можно лечить ?",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Ranglar.value
                              ? Colors.black
                              : Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 9.h,
            ),
            Container(
              width: double.infinity,
              height: 14.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8.w),
                    width: 31.w,
                    height: 14.h,
                    child: Text(
                      "10:14",
                      style: TextStyle(
                          color: Ranglar.value
                              ? Colors.white
                              : Color.fromRGBO(107, 119, 154, 1),
                          fontSize: 12.sp),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 27.w),
                    width: 10.67.w,
                    height: 8.h,
                    child: Image.asset(
                      "assets/Tick.png",
                      color: Ranglar.value
                          ? Colors.white
                          : Color.fromRGBO(62, 100, 255, 1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 27.w),
                  width: 205.w,
                  height: 90.h,
                  decoration: BoxDecoration(
                    color: Ranglar.value
                        ? Color.fromRGBO(107, 119, 154, 1)
                        : Color.fromRGBO(241, 244, 247, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.r),
                        topRight: Radius.circular(15.r),
                        bottomRight: Radius.circular(15.r)),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(right: 20.w, left: 15.w, top: 18.h),
                    child: Text(
                      "Да конечно, сейчас медицина ....... . ... . . . ",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Ranglar.value
                              ? Colors.white
                              : Color.fromRGBO(107, 119, 154, 1)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 9.h,
            ),
            Container(
              margin: EdgeInsets.only(right: 27.w),
              width: double.infinity.sw,
              height: 20.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 27.w),
                    height: 14.h,
                    child: Text(
                      "10:15",
                      style: TextStyle(
                          color: Ranglar.value
                              ? Colors.white
                              : Color.fromRGBO(107, 119, 154, 1),
                          fontSize: 12.sp),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 27.w),
                  width: 80.w,
                  height: 36.h,
                  decoration: BoxDecoration(
                    color: Ranglar.value
                        ? Colors.white
                        : Color.fromRGBO(62, 100, 255, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.r),
                        topRight: Radius.circular(15.r),
                        bottomLeft: Radius.circular(15.r)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 15.w, bottom: 9.h, right: 11.w, top: 9.h),
                    child: Text(
                      "... . . . .",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Ranglar.value
                              ? Colors.black
                              : Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 9.h,
            ),
            Container(
              width: double.infinity,
              height: 14.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8.w),
                    width: 31.w,
                    height: 14.h,
                    child: Text(
                      "10:16",
                      style: TextStyle(
                          color: Ranglar.value
                              ? Colors.white
                              : Color.fromRGBO(107, 119, 154, 1),
                          fontSize: 12.sp),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 27.w),
                    width: 10.67.w,
                    height: 8.h,
                    child: Image.asset(
                      "assets/Tick.png",
                      color: Ranglar.value
                          ? Colors.white
                          : Color.fromRGBO(62, 100, 255, 1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 27.w),
                  width: 240.w,
                  height: 46.h,
                  decoration: BoxDecoration(
                      color: Ranglar.value
                          ? Color.fromRGBO(107, 119, 154, 1)
                          : Color.fromRGBO(241, 244, 247, 1),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.r),
                          topLeft: Radius.circular(15.r),
                          bottomRight: Radius.circular(15.r))),
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 16.w),
                          width: 22.w,
                          height: 22.h,
                          child: Icon(
                            Icons.pause_circle_filled_sharp,
                            color: Ranglar.value
                                ? Colors.white
                                : Color.fromRGBO(34, 31, 32, 1),
                          )),
                      Container(
                        width: 190.w,
                        height: 45.h,
                        child: Column(
                          children: [
                            Transform.scale(
                              scaleX: 1.1.sp,
                              child: Container(
                                margin: EdgeInsets.only(top: 22.5.h),
                                width: 190.w,
                                height: 1.h,
                                child: Slider(
                                    max: 5.04,
                                    min: 0,
                                    value: _value,
                                    onChanged: (e) {
                                      setState(() {
                                        _value = e;
                                      });
                                    }),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 3.5.w),
                              width: 170.w,
                              height: 15.h,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      width: 20.w,
                                      height: 11.h,
                                      child: Text(
                                        "3:45",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Ranglar.value
                                                ? Colors.white
                                                : Color.fromRGBO(
                                                    107, 119, 154, 1)),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(top: 3.5.h),
                                      width: 20.w,
                                      height: 11.h,
                                      child: Text(
                                        "5:04",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Ranglar.value
                                                ? Colors.white
                                                : Color.fromRGBO(
                                                    107, 119, 154, 1)),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Container(
              margin: EdgeInsets.only(right: 27.w),
              width: double.infinity.sw,
              height: 14.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 27.w),
                    height: 14.h,
                    child: Text(
                      "10:18",
                      style: TextStyle(
                          color: Ranglar.value
                              ? Colors.white
                              : Color.fromRGBO(107, 119, 154, 1),
                          fontSize: 12.sp),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 27.w),
              width: double.infinity.sw,
              height: 16.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "${Info.name[widget.index!]} пищет ...",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Ranglar.value
                          ? Colors.white
                          : Color.fromRGBO(107, 119, 154, 1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              width: double.infinity.sw,
              height: 68.h,
              decoration: BoxDecoration(
                  color: Ranglar.value
                      ? Color.fromRGBO(107, 119, 154, 1)
                      : Color.fromRGBO(241, 244, 247, 1),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(
                          0.w,
                          -1.h,
                        ),
                        color: Ranglar.value
                            ? Color.fromRGBO(107, 119, 154, 1)
                            : Color.fromRGBO(241, 244, 247, 1)),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 22.w,
                    height: 22.h,
                    child: Icon(
                      Icons.add,
                      size: 22.sp,
                      color: Ranglar.value
                          ? Colors.white
                          : Color.fromRGBO(34, 43, 69, 1),
                    ),
                  ),
                  Container(
                    width: 290.w,
                    height: 54.h,
                    decoration: BoxDecoration(
                        color: Ranglar.value
                            ? Colors.white
                            : Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(10.r)),
                    child: TextFormField(
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                          hintText: "Напишите письмо ...",
                          hintStyle: TextStyle(
                              color: Ranglar.value
                                  ? Colors.black
                                  : Color.fromRGBO(107, 119, 154, 1),
                              fontSize: 16.sp),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(color: Colors.red)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(107, 119, 154, 1)),
                              borderRadius: BorderRadius.circular(10.r)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(color: Colors.green))),
                      enabled: true,
                      showCursor: true,
                      cursorColor: Ranglar.value
                          ? Color.fromRGBO(107, 119, 154, 1)
                          : Colors.black,
                      cursorHeight: 20.h,
                      cursorWidth: 1.8.w,
                    ),
                  ),
                  Container(
                    width: 15.4.w,
                    height: 22.h,
                    child: Icon(Icons.mic,
                        size: 22.sp,
                        color: Ranglar.value
                            ? Colors.white
                            : Color.fromRGBO(34, 43, 69, 1)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
