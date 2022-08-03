import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixel_perfect/pixel_perfect.dart';
import 'package:weather_app/constants/styles.dart';
import 'package:weather_app/shared/custom_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PixelPerfect(
        assetPath: "assets/images/home.png",
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(36.w, 66.h, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextWidget(
                      text: "San Fransisco", style: subheading1Style),
                  SizedBox(height: 15.h),
                  CustomTextWidget(text: "18°", style: temperaturStyle),
                  SizedBox(height: 13.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFf2eeed),
                          borderRadius:
                              BorderRadius.all(Radius.circular(999999))),
                      padding: EdgeInsets.all(8),
                      child: CustomTextWidget(
                          text: "Cloudy", style: subheading2Style),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
