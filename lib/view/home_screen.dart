import 'package:flutter/material.dart';
import 'package:music_services/core/constans/app_constans.dart';
import 'package:music_services/core/extensions/sizedbox_extensions.dart';
import 'package:music_services/core/theme/app_colors.dart';
import 'package:music_services/core/theme/app_text.dart';
import 'package:music_services/view/widget/bottom_nav.dart';
import 'package:music_services/view/widget/card_widget.dart';
import 'package:music_services/view/widget/hero_section.dart';
import 'package:provider/provider.dart';
import 'package:music_services/viewmodel/service_viewmodel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<ServiceViewModel>(context, listen: false).loadServices();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ServiceViewModel>(context);
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Container(
          color: AppColors.appBackgroundColor,
          child: Column(
            children: [
              // Header Section
              HeroSection(),
              verticalSpace(24),
              // Hire
              Text(AppConstans.hire, style: AppText.syne15Reqular),
              verticalSpace(24),
              // Service Cards
              Expanded(
                child: ListView.builder(
                  // separatorBuilder: (context, index) => verticalSpace(11),
                  shrinkWrap: true,
                  itemCount: viewModel.services.length,
                  itemBuilder: (context, index) {
                    final service = viewModel.services[index];
                    return ServiceCard(service: service);
                  },
                ),
              ),
            ],
          ),
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNav(),
    );
  }
}
