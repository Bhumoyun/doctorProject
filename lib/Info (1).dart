import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Colorrs.dart';
import 'InfoPage.dart';
import 'Info1.dart';
import 'InfoPage.dart';

class Sahifa1 extends StatefulWidget {
  @override
  _Sahifa1State createState() => _Sahifa1State();
}

class _Sahifa1State extends State<Sahifa1> {
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
              if (path[1] == "InfoPage") {
                return MaterialPageRoute(
                    builder: (context) => InfoPage(int.parse(path[2])));
              }
            },
            home: Scaffold(
              backgroundColor: Ranglar.value ? Colors.black : Colors.white,
              appBar: AppBar(
                backgroundColor:
                    Ranglar.value ? Ranglar3.Infopage21 : Ranglar3.Infopage1,
                leading: Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Ranglar.value
                        ? Ranglar3.Infopage22
                        : Ranglar3.Infopage2,
                  ),
                  child: Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromRGBO(241, 244, 247, 1)),
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(241, 244, 247, 1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Ranglar.value
                            ? Ranglar3.Infopage23
                            : Ranglar3.Infopage3,
                      ),
                    ),
                  ),
                ),
                elevation: 0,
                centerTitle: true,
                title: Text(
                  "Докторы",
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: Ranglar.value
                          ? Ranglar3.Infopage24
                          : Ranglar3.Infopage4),
                ),
                actions: [
                  Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      color: Ranglar.value
                          ? Ranglar3.Infopage25
                          : Ranglar3.Infopage5,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Ranglar.value
                          ? Ranglar3.Infopage26
                          : Ranglar3.Infopage6,
                    ),
                  ),
                ],
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 27.w, left: 27.w),
                      child: Container(
                        width: 360.w,
                        height: 44.h,
                        child: TextFormField(
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                              hintText: "Поиск доктора",
                              hintStyle: TextStyle(
                                  color: Ranglar.value
                                      ? Ranglar3.Infopage27
                                      : Ranglar3.Infopage7,
                                  fontSize: 13.sp),
                              prefixIcon: Image.asset("assets/search icon.png"),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                  borderSide: BorderSide(
                                      color: Ranglar.value
                                          ? Ranglar3.Infopage29
                                          : Ranglar3.Infopage9)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Ranglar.value
                                          ? Ranglar3.Infopage210
                                          : Ranglar3.Infopage10),
                                  borderRadius: BorderRadius.circular(10.r)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                  borderSide: BorderSide(
                                      color: Ranglar.value
                                          ? Ranglar3.Infopage211
                                          : Ranglar3.Infopage11))),
                          enabled: true,
                          autofocus: false,
                          maxLines: 1,
                          showCursor: true,
                          cursorColor: Ranglar.value
                              ? Ranglar3.Infopage212
                              : Ranglar3.Infopage12,
                          cursorHeight: 25.h,
                          cursorWidth: 2.5.w,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Ranglar.value
                              ? Ranglar3.Infopage213
                              : Ranglar3.Infopage13,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      width: double.infinity,
                      height: 896.h,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            offset: Offset(0.w, 10.h),
                            blurRadius: 60.r,
                            color: Ranglar.value
                                ? Ranglar3.Infopage215
                                : Ranglar3.Infopage15),
                      ]),
                      child: Container(
                        height: 896.h,
                        width: double.infinity,
                        child: GridView.builder(
                            itemCount: Info.name.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 20.67.h,
                              crossAxisSpacing: 20.w,
                            ),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    Navigator.pushNamed(
                                        context, "/InfoPage/$index");
                                  });
                                },
                                child: Container(),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
