import 'package:cybaze_machine_test/utils/app_images.dart';
import 'package:cybaze_machine_test/widgets/fun_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List images = [
    {
      "img": AppUtils.img1,
      "title": "James",
    },
    {
      "img": AppUtils.g2,
      "title": "Alena Derlin",
    },
    {
      "img": AppUtils.g3,
      "title": "Madelyn Dias",
    },
    {
      "img": AppUtils.img1,
      "title": "James",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FunText(
                  text: "Hello,",
                  fontSize: 30,
                  textColor: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                FunText(
                  text: "Let's Start Quiz",
                  fontSize: 30,
                  textColor: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Image.asset(AppUtils.quizLogo),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                FunText(
                  text: "Winner's",
                  fontSize: 14,
                  textColor: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: SizedBox(
              height: 100.h,
              child: ListView.builder(
                itemCount: images.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            images[index]["img"],
                            height: 65.h,
                            width: 65.w,
                          ),
                          SizedBox(height: 10.h),
                          FunText(
                            text: images[index]["title"],
                            fontSize: 12,
                            textColor: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                      SizedBox(width: 30.w)
                    ],
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 23.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FunText(
                  text: "Popular Super Quiz",
                  fontSize: 14,
                  textColor: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Stack(
                  children: [
                    Image.asset(AppUtils.rect),
                    Positioned(
                        top: 18.h,
                        left: 20.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FunText(
                              text: "Personality Quiz",
                              fontSize: 18.sp,
                              textColor: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            const FunText(
                              text: "This Quiz Starts on",
                              fontSize: 12,
                              textColor: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            Row(
                              children: [
                                TimeContainer(head: "11", subText: "Day"),
                                SizedBox(
                                  width: 10.w,
                                ),
                                TimeContainer(head: "01", subText: "Month"),
                                SizedBox(
                                  width: 10.w,
                                ),
                                TimeContainer(head: "23", subText: "Year"),
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    color: const Color.fromRGBO(0, 0, 0, 0.4),
                                    borderRadius: BorderRadius.circular(10.r)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 17.w, vertical: 12.h),
                                child: FunText(
                                  text: "PLAY QUIZ NOW",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                  textColor: Colors.white,
                                ))
                          ],
                        )),
                    Positioned(
                      right: 23.h,
                      bottom: 0.h,
                      child: Image.asset(AppUtils.lady),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          )
        ],
      ),
    );
  }
}

class TimeContainer extends StatelessWidget {
  final String head;
  final String subText;
  const TimeContainer({
    super.key,
    required this.head,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF2B754),
        // border: Border.all(),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.4),
            spreadRadius: 0,
            blurRadius: 2,
            offset: Offset(0, 2),
          )
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
      child: Column(children: [
        FunText(
          text: head,
          fontSize: 16,
          textColor: Colors.white,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(
          height: 2.h,
        ),
        FunText(
          text: head,
          fontSize: 7,
          textColor: Colors.white,
          fontWeight: FontWeight.w400,
        ),
      ]),
    );
  }
}
