// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fuel_ease_app/widgets/page_swipe.dart';

class Adaptive extends StatelessWidget {
  const Adaptive({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        builder: (context, child) {
          return Scaffold(
            body: SplashScreen1(),
          );
        });
  }
}

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: Container()),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 10.w, 25.w, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.r),
                        ),
                        child: SizedBox(
                          height: 19.h,
                          width: 55.w,
                          child: ElevatedButton(
                            child: Text(
                              'Skip',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(48, 48, 48, 1)),
                            ),
                            onPressed: () {
                              _pageController.animateToPage(2,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeIn);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromRGBO(255, 96, 125, 0.6),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 31.h,
                  ),
                  SvgPicture.asset(
                    'assets/Logo.svg',
                    height: 60.h,
                    width: 240.w,
                  ),
                  SizedBox(
                    height: 150.h,
                  ),
                  // SvgPicture.asset(
                  //   'assets/splash_screen_pic.svg',
                  //   height: 315.h,
                  //   width: 453.w,

                  Container(
                    height: 315.h,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                        'https://img.freepik.com/premium-vector/character-filling-car-gas-station-pouring-fuel-into-vehicle-petroleum-refueling-automobile-transport-gasoline-service-drivers-benzene-ring-formula-cartoon-people-vector-illustration_87771-11191.jpg'),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Welcome to ',
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(250, 17, 62, 1)),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Refuelers!',
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(0, 0, 0, 1)),
                          ),
                        ]),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: Container()),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 10.w, 25.w, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.r),
                        ),
                        child: SizedBox(
                          height: 19.h,
                          width: 55.w,
                          child: ElevatedButton(
                            child: Text(
                              'Skip',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(48, 48, 48, 1)),
                            ),
                            onPressed: () {
                              _pageController.animateToPage(2,
                                  duration: Duration(milliseconds: 250),
                                  curve: Curves.easeIn);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromRGBO(255, 96, 125, 0.6),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 31.h,
                  ),
                  SvgPicture.asset(
                    'assets/Logo.svg',
                    height: 60.h,
                    width: 240.w,
                  ),
                  SizedBox(
                    height: 150.h,
                  ),
                  Container(
                    height: 315.h,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                        'https://img.freepik.com/premium-vector/character-filling-car-gas-station-pouring-fuel-into-vehicle-petroleum-refueling-automobile-transport-gasoline-service-drivers-benzene-ring-formula-cartoon-people-vector-illustration_87771-11191.jpg'),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Out Of Fuel? ',
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(0, 0, 0, 1)),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'No Worries!',
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(250, 17, 62, 1)),
                          ),
                        ]),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30.h,
                    width: 55.w,
                  ),
                  SizedBox(
                    height: 31.h,
                  ),
                  SvgPicture.asset(
                    'assets/Logo.svg',
                    height: 60.h,
                    width: 240.w,
                  ),
                  SizedBox(
                    height: 150.h,
                  ),
                  Container(
                    height: 315.h,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                        'https://img.freepik.com/premium-vector/character-filling-car-gas-station-pouring-fuel-into-vehicle-petroleum-refueling-automobile-transport-gasoline-service-drivers-benzene-ring-formula-cartoon-people-vector-illustration_87771-11191.jpg'),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Login ',
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(250, 17, 62, 1)),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'To Enter',
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(0, 0, 0, 1)),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(48, 48, 48, 1),
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      height: 45.h,
                      width: 302.w,
                      child: Center(
                        child: Text(
                          'Refuel Now',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 23.0),
              child: PageSwipe(
                currentIndex: _currentIndex,
                pageCount: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
