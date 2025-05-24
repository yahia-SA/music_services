// Service Card Widget
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_services/core/routes/navigator_services.dart';
import 'package:music_services/core/routes/routes.dart';
import 'package:music_services/core/theme/app_colors.dart';
import 'package:music_services/core/theme/app_text.dart';
import 'package:music_services/models/service_model.dart';


class ServiceCard extends StatelessWidget {
  final ServiceModel service;

  const ServiceCard({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: GestureDetector(
        onTap: () => NavigationService.pushNamed(Routes.details, arguments: service),
        child: Container(
                  decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: AppColors.appCardBackgroundColor,
            image:DecorationImage(
                    image: AssetImage(service.background),
                    fit: BoxFit.cover,
                    opacity: .1,
                  )
          
          ),
          child: ListTile(
            leading: SvgPicture.asset(service.icon,width: 47.w,height: 47.h,),
            title: Text(service.title,style: AppText.syne15BoldWhite,),
            subtitle: Text(service.description,style: AppText.syne13Reqular,),
            trailing: IconButton(
              icon: const Icon(Icons.play_arrow,color: Colors.white,),
              onPressed: () {
                NavigationService.pushNamed(Routes.details, arguments: service);
                        },
            ),
          ),
        ),
      ),
    );
  }
}