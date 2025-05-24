import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_services/core/theme/app_colors.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.appBackgroundColor,
      items: [
        BottomNavigationBarItem(
          backgroundColor: AppColors.appBackgroundColor,
          icon: SizedBox(
            width: 24,
            height: 24,
            child: SvgPicture.asset('assets/icons/home.svg',clipBehavior: Clip.antiAlias,),  ),
          label: 'Home',
        ),
        const BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.news),
          label: 'News',
        ),
        const BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.music_note_2),
          label: 'TrackBox',
        ),
        const BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.bag),
          label: 'Projects',
        ),
      ],
    );
  }
}
