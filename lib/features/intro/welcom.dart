import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:se7ety/core/utils/app_colors.dart';
import 'package:se7ety/core/utils/text_style.dart';
import 'package:se7ety/features/widgets/custom_button.dart';

class Welcom extends StatefulWidget {
  const Welcom({super.key});

  @override
  State<Welcom> createState() => _WelcomState();
}

class _WelcomState extends State<Welcom> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          /// ----- Background Image -----
          Image.asset(
            "assets/images/welcome-bg.png",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),

          /// ----- Title -----
          Positioned(
            top: h * 0.12,
            left: w * 0.27,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "اهلا بيك",
                  style: getHeadLineTextStyle(
                    context,
                    color: AppColors.primaryColor,
                  ),
                ),
                const Gap(5),
                Text(
                  "سجل واحجز عند دكتورك وانت في البيت",
                  style: getBodyTextStyle(
                    context,
                    color: AppColors.darkcolor,
                    fontsize: 14,
                  ),
                ),
              ],
            ),
          ),

          /// ----- Glassmorphic Box -----
          Positioned(
            left: 20,
            right: 20,
            bottom: h * 0.15,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Container(
                  height: h * 0.3,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.3),
                      width: 1,
                    ),
                  ),

                  ///Inside Content
                  child: Column(
                    children: [
                      Text(
                        "سجل دلوقتي ك",
                        style: getBodyTextStyle(
                          context,
                          color: AppColors.white,
                          fontsize: 18,
                        ),
                      ),

                      const Spacer(),

                      /// --- Doctor Button ---
                      CustomButton(
                        fixedSize: Size(w, 55),
                        text: "دكتور",
                        style: getBodyTextStyle(
                          context,
                          color: AppColors.white,
                        ),
                        bgColor: Colors.white,
                      ),
                      const Gap(10),

                      /// --- Patient Button ---
                      CustomButton(
                        fixedSize: Size(w, 55),
                        text: "مريض",
                        style: getBodyTextStyle(
                          context,
                          color: AppColors.white,
                        ),
                        bgColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
