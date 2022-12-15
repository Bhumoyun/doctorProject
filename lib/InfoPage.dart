import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Colorrs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MyApp1.dart';
import 'Info1.dart';

class InfoPage extends StatefulWidget {
  int? index;
  InfoPage(this.index);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            onGenerateRoute: (RouteSettings settings1) {
              List<String> path = settings1.name.toString().split("/");
              if (path[1] == "Page2") {
                return MaterialPageRoute(
                    builder: (context) => HomePage1(int.parse(path[2])));
              }
            },
            home: Scaffold(
              backgroundColor: Ranglar.value
                  ? Colors.black
                  : Color.fromRGBO(255, 255, 255, 1),
              appBar: AppBar(
                toolbarHeight: 80.h,
                elevation: 0,
                backgroundColor: Ranglar.value
                    ? Colors.black
                    : Color.fromRGBO(255, 255, 255, 1),
                leading: Container(
                  margin: EdgeInsets.only(left: 17.w, top: 24.h, bottom: 16.h),
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Ranglar.value
                          ? Colors.black
                          : Color.fromRGBO(255, 255, 255, 1)),
                  child: GestureDetector(
                    onTap: (() {
                      setState(() {
                        Navigator.pop(context);
                      });
                    }),
                    child: Icon(
                      Icons.arrow_back,
                      color: Ranglar.value
                          ? Colors.white
                          : Color.fromRGBO(34, 43, 69, 1),
                    ),
                  ),
                ),
                actions: [
                  Padding(
                    padding: EdgeInsets.only(right: 17.w),
                    child: Icon(
                      Icons.more_vert,
                      color: Ranglar.value
                          ? Colors.white
                          : Color.fromRGBO(35, 31, 32, 1),
                    ),
                  ),
                ],
              ),
              body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 470.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(40.r),
                                bottomRight: Radius.circular(40.r)),
                            gradient: LinearGradient(colors: [
                              Ranglar.value ? Colors.black : Colors.white,
                              Ranglar.value
                                  ? Colors.black
                                  : Color.fromRGBO(252, 250, 250, 1),
                            ]),
                            color: Ranglar.value
                                ? Colors.white
                                : Color.fromRGBO(32, 65, 198, 1)),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 80),
                              child: Container(
                                width: 239.13.w,
                                height: 191.3.h,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Container(
                                        width: 110.w,
                                        height: 110.h,
                                        decoration: BoxDecoration(
                                            color: Ranglar.value
                                                ? Colors.black
                                                : Color.fromRGBO(
                                                    216, 216, 216, 1),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 0.56)),
                                            boxShadow: [
                                              BoxShadow(
                                                  offset: Offset(0.w, 15.h),
                                                  blurRadius: 30.r,
                                                  color: Ranglar.value
                                                      ? Colors.white
                                                      : Color.fromRGBO(
                                                          230, 217, 217, 0.7)),
                                            ],
                                            image: DecorationImage(
                                                image: AssetImage(Info
                                                    .assets1[widget.index!]))),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 47.h),
                                      child: Text(
                                        Info.name[widget.index!],
                                        style: TextStyle(
                                          color: Ranglar.value
                                              ? Colors.white
                                              : Color.fromRGBO(34, 43, 69, 1),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 6.7.h,
                            ),
                            Text(
                              Info.name1[widget.index!],
                              style: TextStyle(
                                color: Ranglar.value
                                    ? Colors.white
                                    : Color.fromRGBO(107, 119, 154, 1),
                                fontWeight: FontWeight.w700,
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 24.h,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 110.w,
                                    height: 130.h,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              offset: Offset(0.w, 10.h),
                                              blurRadius: 25.r,
                                              color: Ranglar.value
                                                  ? Color.fromRGBO(
                                                      255, 255, 255, 1)
                                                  : Color.fromRGBO(
                                                      130, 145, 189, 0.05)),
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(21.r),
                                        color: Ranglar.value
                                            ? Colors.black
                                            : Colors.white),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 49.w,
                                          height: 63.h,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(15.r),
                                                bottomLeft:
                                                    Radius.circular(15.r)),
                                            color: Ranglar.value
                                                ? Color.fromRGBO(
                                                    255, 255, 255, 0.15)
                                                : Color.fromRGBO(
                                                    122, 206, 250, 0.15),
                                          ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(top: 32.h),
                                                child: Image.asset(
                                                  "assets/Men Icon.png",
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 17.h,
                                        ),
                                        Text(
                                          "1000+",
                                          style: TextStyle(
                                            color: Ranglar.value
                                                ? Colors.white
                                                : Color.fromRGBO(34, 43, 69, 1),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 17.sp,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4.h,
                                        ),
                                        Text(
                                          "Пациентов",
                                          style: TextStyle(
                                            color: Ranglar.value
                                                ? Colors.white
                                                : Color.fromRGBO(
                                                    107, 119, 154, 1),
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 110.w,
                                    height: 130.h,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              offset: Offset(0.w, 10.h),
                                              blurRadius: 25.r,
                                              color: Ranglar.value
                                                  ? Colors.white
                                                  : Color.fromRGBO(
                                                      107, 119, 154, 0.05)),
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(30.r),
                                        color: Ranglar.value
                                            ? Colors.black
                                            : Colors.white),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 49.w,
                                          height: 63.h,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(15.r),
                                                bottomLeft:
                                                    Radius.circular(15.r)),
                                            color: Ranglar.value
                                                ? Color.fromRGBO(
                                                    255, 255, 255, 0.15)
                                                : Color.fromRGBO(
                                                    253, 241, 243, 1),
                                          ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(top: 32.h),
                                                child: Image.asset(
                                                  "assets/Medal.png",
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 17.h,
                                        ),
                                        Text(
                                          "10 Лет",
                                          style: TextStyle(
                                            color: Ranglar.value
                                                ? Colors.white
                                                : Color.fromRGBO(34, 43, 69, 1),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 17.sp,
                                          ),
                                        ),
                                        SizedBox(height: 4.h),
                                        Text(
                                          "Стаж",
                                          style: TextStyle(
                                            color: Ranglar.value
                                                ? Colors.white
                                                : Color.fromRGBO(
                                                    107, 119, 154, 1),
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 110.w,
                                    height: 130.h,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              offset: Offset(0.w, 10.h),
                                              blurRadius: 25.r,
                                              color: Ranglar.value
                                                  ? Colors.white
                                                  : Color.fromRGBO(
                                                      107, 119, 154, 0.05)),
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(21.r),
                                        color: Ranglar.value
                                            ? Colors.black
                                            : Colors.white),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 49.w,
                                          height: 63.h,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(15.r),
                                                bottomLeft:
                                                    Radius.circular(15.r)),
                                            color: Ranglar.value
                                                ? Color.fromRGBO(
                                                    255, 255, 255, 0.15)
                                                : Color.fromRGBO(
                                                    254, 246, 236, 1),
                                          ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(top: 32.h),
                                                child: Image.asset(
                                                  "assets/Star.png",
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 17.h),
                                        Text(
                                          "4.5",
                                          style: TextStyle(
                                            color: Ranglar.value
                                                ? Colors.white
                                                : Color.fromRGBO(34, 43, 69, 1),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 17.sp,
                                          ),
                                        ),
                                        SizedBox(height: 4.h),
                                        Text(
                                          "Рейтинг",
                                          style: TextStyle(
                                            color: Ranglar.value
                                                ? Colors.white
                                                : Color.fromRGBO(
                                                    107, 119, 154, 1),
                                            fontSize: 12.sp,
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
                      ),
                      SizedBox(
                        height: 41.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 27.w),
                        child: Text(
                          "О доктора",
                          style: TextStyle(
                            color: Ranglar.value
                                ? Color.fromRGBO(255, 255, 255, 1)
                                : Color.fromRGBO(34, 43, 69, 1),
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 13.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 27.w),
                        child: Text(
                          "Здесь будет текст Здесь будет текст Здесь будет текст Здесь будет текст фыва ыфвафыв афывафы ваф ываф ываф ываф ываф ываф ывафывафывафы вафыв афывафывафывафыва фывафыва фываф ыва фыва фыва фыва фыва фыва фыва фыва фыва фыа фыва фывафыва",
                          style: TextStyle(
                            color: Ranglar.value
                                ? Color.fromRGBO(255, 255, 255, 1)
                                : Color.fromRGBO(107, 119, 154, 1),
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 27.w),
                        child: Text(
                          "Время работы",
                          style: TextStyle(
                            color: Ranglar.value
                                ? Color.fromRGBO(255, 255, 255, 1)
                                : Color.fromRGBO(34, 43, 69, 1),
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 13.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 27.w),
                        child: Text(
                          "Пн - Пт (08:30 AM - 09:00 PM)",
                          style: TextStyle(
                            color: Ranglar.value
                                ? Color.fromRGBO(255, 255, 255, 1)
                                : Color.fromRGBO(107, 119, 154, 1),
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 27.w),
                        child: Text(
                          "Связаться",
                          style: TextStyle(
                            color: Ranglar.value
                                ? Color.fromRGBO(255, 255, 255, 1)
                                : Color.fromRGBO(34, 43, 69, 1),
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 19.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 27.w),
                        child: Row(
                          children: [
                            Container(
                              width: 50.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                color: Ranglar.value
                                    ? Color.fromRGBO(255, 255, 255, 0.15)
                                    : Color.fromRGBO(237, 161, 171, 0.15),
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: Image.asset("assets/SMS.png"),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10.w),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 200.w,
                                          child: Text(
                                            "СМС",
                                            style: TextStyle(
                                              color: Ranglar.value
                                                  ? Color.fromRGBO(
                                                      255, 255, 255, 1)
                                                  : Color.fromRGBO(
                                                      34, 43, 69, 1),
                                              fontSize: 16.sp,
                                            ),
                                          ),
                                        ),
                                        Container(
                                            width: 200.w,
                                            child: Text(
                                              "С помощю встроенного чата",
                                              style: TextStyle(
                                                  color: Ranglar.value
                                                      ? Color.fromRGBO(
                                                          255, 255, 255, 1)
                                                      : Color.fromRGBO(
                                                          107, 119, 154, 1)),
                                            ))
                                      ]),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 27.w),
                        child: Row(
                          children: [
                            Container(
                              width: 50.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                color: Ranglar.value
                                    ? Color.fromRGBO(255, 255, 255, 0.15)
                                    : Color.fromRGBO(122, 206, 250, 0.15),
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: Image.asset("assets/Phone.png"),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10.w),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 200.w,
                                          child: Text(
                                            "Аудио вызов",
                                            style: TextStyle(
                                              color: Ranglar.value
                                                  ? Color.fromRGBO(
                                                      255, 255, 255, 1)
                                                  : Color.fromRGBO(
                                                      34, 43, 69, 1),
                                              fontSize: 16.sp,
                                            ),
                                          ),
                                        ),
                                        Container(
                                            width: 200.w,
                                            child: Text(
                                              "Аудио",
                                              style: TextStyle(
                                                  color: Ranglar.value
                                                      ? Color.fromRGBO(
                                                          255, 255, 255, 1)
                                                      : Color.fromRGBO(
                                                          107, 119, 154, 1)),
                                            ))
                                      ]),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 27.w),
                        child: Row(
                          children: [
                            Container(
                              width: 50.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                color: Ranglar.value
                                    ? Color.fromRGBO(255, 255, 255, 0.15)
                                    : Color.fromRGBO(247, 196, 128, 0.15),
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: Image.asset("assets/Camera.png"),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10.w),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 200.w,
                                          child: Text(
                                            "Видео вызов",
                                            style: TextStyle(
                                              color: Ranglar.value
                                                  ? Color.fromRGBO(
                                                      255, 255, 255, 1)
                                                  : Color.fromRGBO(
                                                      34, 43, 69, 1),
                                              fontSize: 16.sp,
                                            ),
                                          ),
                                        ),
                                        Container(
                                            width: 200.w,
                                            child: Text(
                                              "Видео",
                                              style: TextStyle(
                                                  color: Ranglar.value
                                                      ? Color.fromRGBO(
                                                          255, 255, 255, 1)
                                                      : Color.fromRGBO(
                                                          107, 119, 154, 1)),
                                            ))
                                      ]),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 42.h),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        HomePage1(widget.index)));
                          });
                        },
                        child: Center(
                          child: Container(
                            width: 360.w,
                            height: 60.h,
                            child: Center(
                              child: Text(
                                "Записаться",
                                style: TextStyle(
                                  color: Ranglar.value
                                      ? Colors.black
                                      : Colors.white,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: Ranglar.value
                                  ? Color.fromRGBO(255, 255, 255, 1)
                                  : Color.fromRGBO(62, 100, 255, 1),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 21.h,
                      )
                    ]),
              ),
            ),
          );
        });
  }
}
