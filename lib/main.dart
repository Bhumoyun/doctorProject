import 'Info (1).dart';
import 'Sahifa2.dart';
import 'Colorrs.dart';
import 'package:flutter/material.dart';
import 'Info1.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
    }
    );
    }
    }
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Ranglar.value ?Colors.black : Colors.white,
      appBar: AppBar(
        backgroundColor:Ranglar.value ?Colors.black : Colors.white,
        elevation: 0,
        title: SizedBox(
          width: 138.w,
          child: Text(
            "Привет, Абдукарим",
            style:
                TextStyle(fontSize: 15.sp, color: Ranglar.value ? Ranglar.main21 : Ranglar.main1),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Time()));
            },
            child: Container(
              width: 36.w,
              height: 36.h,
              margin: EdgeInsets.symmetric(vertical: 10.h),
              decoration: BoxDecoration(
                  border: Border.all(color:  Ranglar.value ? Ranglar.main22 : Ranglar.main2),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Center(
                child: Icon(
                  Icons.calendar_month,
                  color:  Ranglar.value ? Ranglar.main23 : Ranglar.main3,
                ),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(right: 10.w, left: 7.w),
            child: Icon(
              Icons.more_vert,
              color: Ranglar.value ? Ranglar.main24 : Ranglar.main4,
            ),
          ),
          Switch(
            value: Ranglar.value, onChanged: (e){
            setState(() {
              Ranglar.value = e;
            });
          }),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 27.w),
              child: Column(
                children: [
                  Container(
                    width: double.infinity.sw,
                    height: 463.h,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurStyle: BlurStyle.normal,
                              spreadRadius: 0.r,
                              offset: Offset(0, 25),
                              blurRadius: 58.r,
                              color:  Ranglar.value ? Ranglar.main25 : Ranglar.main5),
                        ],
                        color:  Ranglar.value ? Ranglar.main26 : Ranglar.main6,
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 20.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 208.w,
                            height: 82.h,
                            child: Text(
                              "Защита от Covid-19",
                              style: TextStyle(
                                  color:  Ranglar.value ? Ranglar.main27 : Ranglar.main7,
                                  fontSize: 36.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(
                            width: 200.w,
                            height: 52.h,
                            child: Padding(
                              padding:  EdgeInsets.only(top: 16.h),
                              child: Text(
                                "Запищитесь онлайн на вакцинацию",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color:  Ranglar.value ? Ranglar.main28 : Ranglar.main8,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 73.16.h,
                          ),
                          Container(
                            width: 296.32.w,
                            height: 235.84.h,
                            margin: EdgeInsets.only(right: 32.4.w, left: 31.27.w),
                            child: Image.asset(
                              "assets/illustration.png",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    width: double.infinity,
                    height: 80.h,
                    decoration: BoxDecoration(
                      color:  Ranglar.value ? Ranglar.main29 : Ranglar.main9,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Нужен доктор ?",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.sp,
                                    color:  Ranglar.value ? Ranglar.main210 : Ranglar.main10),
                              ),
                               SizedBox(
                                height: 9.h,
                              ),
                              Text(
                                "Найдите подходящих специалистов",
                                style: TextStyle(
                                    color:  Ranglar.value ? Ranglar.main211 : Ranglar.main11),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Sahifa1()));
                              });
                            },
                            child: Container(
                              width: 40.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                  color:  Ranglar.value ? Ranglar.main212 : Ranglar.main12,
                                  borderRadius: BorderRadius.circular(10.r)),
                              child: Icon(Icons.arrow_forward,color: Ranglar.value ? Colors.white : Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
             SizedBox(
              height: 30.h,
            ),
            Padding(
              padding:  EdgeInsets.only(left: 27.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Специальность 😷",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp,
                        color:  Ranglar.value ? Ranglar.main213 : Ranglar.main13),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 27.w),
              height: 133.h,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    margin:  EdgeInsets.only(right: 10.w),
                    width: 114.w,
                    decoration: BoxDecoration(
                        color:  Ranglar.value ? Ranglar.main214 : Ranglar.main14,
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Center(
                      child: Column(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(top: 21.h),
                            child: Image.asset(Info.assImag[index]),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(top: 22.07.h),
                            child: Text(
                              Info.prof[index],
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color:  Ranglar.value ? Ranglar.main215 : Ranglar.main15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 7.h),
                            child: Text(
                              Info.doctors[index],
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color:  Ranglar.value ? Ranglar.main216 : Ranglar.main16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: 10,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
