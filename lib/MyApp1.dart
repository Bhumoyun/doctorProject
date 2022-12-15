import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Colorrs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Info1.dart';
import 'Last Page.dart';

class HomePage1 extends StatefulWidget {
  int? index;
  HomePage1(this.index);
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  String _name = "26-30";
  bool _e = false;
  List<bool> _isLike4 = List.generate(Info.name4.length, (index) => false);
  List<bool> _isLike3 = List.generate(Info.time2.length, (index) => false);
  List<bool> _isLike2 = List.generate(Info.time1.length, (index) => false);
  List<bool> _isLike = List.generate(Info.name3.length, (index) => false);
  List<bool> _isLike1 = List.generate(Info.time.length, (index) => false);
  @override
  void initState() {
    _isLike4[0] = true;
    _isLike[1] = true;
    _isLike2[1] = true;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return Scaffold(
      backgroundColor: Ranglar.value ? Colors.black : const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Ranglar.value ? Colors.black :const Color.fromRGBO(255, 255, 255, 1),
        leading: GestureDetector(
          onTap: (){
            setState(() {
              Navigator.pop(context);
            });
          },
          child: Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: Ranglar.value ? Colors.black : const Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child:Icon(
              Icons.arrow_back,
              color: 
              Ranglar.value ? Colors.white : const Color.fromRGBO(34,43,69,1),size:16.sp)
          ),
        ),
        title: Text(
          "Записаться",
          style: TextStyle(color: Ranglar.value ? Colors.white : const Color.fromRGBO(34, 43, 69, 1), fontSize: 18.sp),
        ),
      ),
      body: SingleChildScrollView(
        reverse: true,
        primary: true,
        child: Padding(
          padding: EdgeInsets.only(left: 27.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: 144.w,
                  height: 21.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Декабрь, 2021",
                        style: TextStyle(
                            color: Ranglar.value ? Colors.white : const Color.fromRGBO(34, 43, 69, 1),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 14.w,
                        height: 7.h,),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Ranglar.value ? Colors.white : const Color.fromRGBO(34, 43, 69, 1),
                        ),
                    ],
                  )),
              SizedBox(
                height: 22.h,
              ),
              SizedBox(
                height: 90.h,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Info.name3.length,
                    itemBuilder: (cotext, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (!_isLike[index]) {
                              _isLike = List.generate(
                                  Info.name3.length, (index) => false);
                              _isLike[index] = true;
                            } else {
                              _isLike[index] = false;
                            }
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: Container(
                            width: 80.w,
                            height: 90.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13.r),
                              color: _isLike[index]
                                  ? Ranglar.value ? const Color.fromRGBO(8, 38, 155, 1) : const Color.fromRGBO(62, 100, 255, 1)
                                  : Ranglar.value ? Colors.white: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  Info.name3[index],
                                  style: TextStyle(
                                      color: _isLike[index]
                                          ? Ranglar.value ? Colors.black : const Color.fromRGBO(255, 255, 255, 1)
                                          : Ranglar.value ? Colors.black : const Color.fromRGBO(107, 119, 154, 1),
                                      fontSize: 24.sp,
                                      fontWeight: _isLike[index]
                                          ? FontWeight.w700
                                          : FontWeight.w400),
                                ),
                                Text(
                                  Info.info1[index],
                                  style: TextStyle(
                                    color: _isLike[index]
                                          ? Ranglar.value ? Colors.black : const Color.fromRGBO(255, 255, 255, 1)
                                          : Ranglar.value ? Colors.black : const Color.fromRGBO(107, 119, 154, 1),
                                      fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 32.h,
              ),
              SizedBox(
                width: 145.w,
                height: 21.h,
                child: Text(
                  "Доступные чсы",
                  style: TextStyle(
                      color: Ranglar.value ? Colors.white : const Color.fromRGBO(34, 43, 69, 1),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              SizedBox(
                height: 40.h,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Info.time.length,
                    itemBuilder: (cotext, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (!_isLike1[index]) {
                              _isLike3 = List.generate(
                                  Info.time2.length, (index) => false);
                              _isLike2 = List.generate(
                                  Info.time1.length, (index) => false);
                              _isLike1 = List.generate(
                                  Info.time.length, (index) => false);
                              _isLike1[index] = true;
                            } else {
                              _isLike1[index] = false;
                            }
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: Container(
                            width: 100.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: _isLike1[index]
                                  ? Ranglar.value ? const Color.fromRGBO(2, 52, 252, 1) : const Color.fromRGBO(62, 100, 255, 1)
                                  : Ranglar.value ? Colors.white : const Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  Info.time[index],
                                  style: TextStyle(
                                      color: _isLike1[index]
                                          ? Ranglar.value ? Colors.black : const Color.fromRGBO(255, 255, 255, 1)
                                          : Ranglar.value ? Colors.black : const Color.fromRGBO(107, 119, 154, 1),
                                      fontSize: 14.sp,
                                      fontWeight: _isLike1[index]
                                          ? FontWeight.w700
                                          : FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 40.h,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Info.time1.length,
                    itemBuilder: (cotext, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _isLike1 = List.generate(
                                Info.time2.length, (index) => false);
                            _isLike3 = List.generate(
                                Info.time.length, (index) => false);
                            if (!_isLike2[index]) {
                              _isLike2 = List.generate(
                                  Info.time1.length, (index) => false);
                              _isLike2[index] = true;
                            } else {
                              _isLike2[index] = false;
                            }
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: Container(
                            width: 100.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: _isLike2[index]  
                                  ? Ranglar.value ? const Color.fromRGBO(2, 52, 252, 1) : const Color.fromRGBO(62, 100, 255, 1)
                                  : Ranglar.value ? Colors.white : const Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  Info.time1[index],
                                  style: TextStyle(
                                      color: _isLike2[index]
                                          ? Ranglar.value ? Colors.black : const Color.fromRGBO(255, 255, 255, 1)
                                          : Ranglar.value ? Colors.black : const Color.fromRGBO(107, 119, 154, 1),
                                      fontSize: 14.sp,
                                      fontWeight: _isLike2[index]
                                          ? FontWeight.w700
                                          : FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
             SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 40.h,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Info.time2.length,
                    itemBuilder: (cotext, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (!_isLike3[index]) {
                              _isLike2 = List.generate(
                                  Info.time1.length, (index) => false);
                              _isLike1 = List.generate(
                                  Info.time.length, (index) => false);
                              _isLike3 = List.generate(
                                  Info.time2.length, (index) => false);
                              _isLike3[index] = true;
                            } else {
                              _isLike3[index] = false;
                            }
                          });
                        },
                        child: Padding(
                          padding:  EdgeInsets.only(right: 10.w),
                          child: Container(
                            width: 100.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: _isLike3[index]  
                                  ? Ranglar.value ? const Color.fromRGBO(2, 52, 252, 1) : const Color.fromRGBO(62, 100, 255, 1)
                                  : Ranglar.value ? Colors.white : const Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  Info.time2[index],
                                  style: TextStyle(
                                      color: _isLike3[index]
                                          ? Ranglar.value ? Colors.white : const Color.fromRGBO(255, 255, 255, 1)
                                          : Ranglar.value ? Colors.black : const Color.fromRGBO(107, 119, 154, 1),
                                      fontSize: 14.sp,
                                      fontWeight: _isLike3[index]
                                          ? FontWeight.w700
                                          : FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 32.h,
              ),
              SizedBox(
                width: 227.w,
                height: 21.h,
                child: Text(
                  "Информация о пациенте",
                  style: TextStyle(
                      color: Ranglar.value ? Colors.white : const Color.fromRGBO(34, 43, 69, 1),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 19.h,
              ),
              SizedBox(
                width: 33.w,
                height: 16.h,
                child: Text(
                  "ФИО",
                  style: TextStyle(
                    color: Ranglar.value ? Colors.white : const Color.fromRGBO(107, 119, 154, 1)
                    ),
                ),
              ),
              SizedBox(height: 9.h),
              Container(
                width: 360.w,
                height: 50.h,
                color: Ranglar.value ? Colors.white : const Color.fromRGBO(107, 119, 154, 0.05),
                child: TextFormField(
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      hintText: "Иззат Рахматов",
                      hintStyle: TextStyle(
                          color: Ranglar.value ? Colors.black : const Color.fromRGBO(34, 43, 69, 1), fontSize: 16.sp),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: Ranglar.value ? const Color.fromRGBO(255,255,255,0.05) : const Color.fromRGBO(107,119,154,0.05)
                            )
                            ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Ranglar.value ? Colors.black : const Color.fromRGBO(107, 119, 154, 1)),
                          borderRadius: BorderRadius.circular(10.r)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(color: Ranglar.value ? const Color.fromRGBO(255,255,255,0.05) : const Color.fromRGBO(107,119,154,0.05)))),
                  enabled: true,
                  autofocus: false,
                  maxLines: 1,
                  showCursor: true,
                  cursorColor: Ranglar.value ? Colors.white : Colors.black,
                  cursorHeight: 30.h,
                  cursorWidth: 3.w,
                ),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                width: 54.w,
                height: 16.h,
                ),
                Text(
                  "Возраст",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Ranglar.value ? Colors.white : const Color.fromRGBO(107, 119, 154, 1),
                  ),
                ),
                SizedBox(
                height: 9.h,
              ),
              Container(
                width: 360.w,
                decoration:
                    BoxDecoration(
                      color: Ranglar.value ? Colors.white : Color.fromRGBO(107, 119, 154, 0.05),
                      borderRadius: BorderRadius.circular(10.r)),
                child: ExpansionTile(
                  childrenPadding: EdgeInsets.all(_e ? 20 : 0),
                  onExpansionChanged: (e){
                    setState(() {
                    _e = e;
                  });},
                  trailing: Icon(_e ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                  size: 14.sp,
                  color: Ranglar.value ? Colors.black : const Color.fromRGBO(107,119,154,1),
                  ),
                title: Text(
                  _name,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Ranglar.value ? Colors.black : const Color.fromRGBO(34,43,69,1)),),
                    children: [
                      Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: _e ? 520.h : 0.h,
                            child: ListView.builder(
                              itemCount: Info.year.length,
                              itemBuilder: (context, index){
                                return InkWell(
                                  onTap: (){
                                    setState(() {
                                      _name = Info.year[index];
                                      _e = !_e;
                                    });
                                  },
                                  child: Container(
                                                              width: double.infinity,
                                                              height: 20.h,
                                                              child: Text(
                                  Info.year[index],
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Ranglar.value ? Colors.black : Color.fromRGBO(34,43,69,1)),),
                                                            ),
                                );
                              }
                              ),
                          ),
                            SizedBox(height: 1.h,),
                        ],
                      ),
                      ],
                    ),
              ),
              SizedBox(
                height: 20.h,
              ),
                Text(
                  "Пол",
                  style: TextStyle(
                      color: Ranglar.value ? Colors.white : const Color.fromRGBO(107, 119, 154, 1), 
                      fontSize: 14.sp),
                ),
              SizedBox(
                height: 9.h,
              ),
              SizedBox(
                height: 40.h,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Info.name4.length,
                    itemBuilder: (cotext, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (!_isLike4[index]) {
                              _isLike4 = List.generate(
                                  Info.name1.length, (index) => false);
                              _isLike4[index] = true;
                            } else {
                              _isLike4[index] = false;
                            }
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 10.w
                          ),
                          child: Container(
                            width: 100.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: _isLike4[index]  
                                  ? Ranglar.value ? const Color.fromRGBO(2, 52, 252, 1) : const Color.fromRGBO(62, 100, 255, 1)
                                  : Ranglar.value ? Colors.white : const Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  Info.name4[index],
                                  style: TextStyle(
                                      color: _isLike4[index]
                                          ? Ranglar.value ? Colors.black :const Color.fromRGBO(255, 255, 255, 1)
                                          : Ranglar.value ? Colors.black : const Color.fromRGBO(107, 119, 154, 1),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                width: 151.w,
                height: 16.h,
                child: Text(
                  "Напишите о проблеме",
                  style: TextStyle(
                      fontSize: 14.sp, color: Ranglar.value ? Colors.white : const Color.fromRGBO(107, 119, 154, 1)),
                ),
              ),
              SizedBox(height: 9.h),
              Container(
                width: 360.w,
                height: 129.h,
                decoration: BoxDecoration(
                    color: Ranglar.value ? const Color.fromRGBO(255,255,255,1):const Color.fromRGBO(107, 119, 154, 0.05),
                    borderRadius: BorderRadius.circular(10.r)),
                child: TextFormField(
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      hintText: "Ваша проблема",
                      hintStyle: TextStyle(
                          color: Ranglar.value ? Colors.black : const Color.fromRGBO(107, 119, 154, 1),
                          fontSize: 16.sp),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(color: Ranglar.value ? Colors.redAccent: Colors.red)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Ranglar.value ? Colors.black : const Color.fromRGBO(107, 119, 154, 1)),
                          borderRadius: BorderRadius.circular(10.r)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(color: Ranglar.value ? Colors.greenAccent: Colors.green))),
                  enabled: true,
                  autofocus: false,
                  maxLines: 5,
                  showCursor: true,
                  cursorColor: Ranglar.value ? Colors.white : Colors.black,
                  cursorHeight: 20.h,
                  cursorWidth: 1.w,
                ),
              ),
              SizedBox(
                height: 62.h,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>LastPage(widget.index)));
                  });
                },
                child: Container(
                  width: 360.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Ranglar.value ? const Color.fromRGBO(255, 255, 255, 1) : const Color.fromRGBO(62, 100, 255, 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Записаться",
                        style: TextStyle(
                            color: Ranglar.value ? Colors.black : const Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 16.sp),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 21.h,
              )
            ],
          ),
        ),
      ),
    );
      }
    );
  }
}
