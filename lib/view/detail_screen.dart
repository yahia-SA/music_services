import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_services/core/theme/app_text.dart';
import 'package:music_services/models/service_model.dart';

class DetailScreen extends StatelessWidget {
  final ServiceModel service;

  const DetailScreen({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent ,
        leading: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
          child: IconButton(
            onPressed: () => Navigator.pop(context),
          
            icon: Icon(
              CupertinoIcons.arrow_left_circle_fill,
              color: Colors.white,
              size: 40.sp,
            ),
          ),
        ),
      ),

      body: Center(
        child: Text(
          "You tapped on: ${service.title}",
          style: AppText.syne16BoldWhite,
        ),
      ),
    );
  }
}
