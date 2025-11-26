import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:se7ety/core/extenstions/navigator.dart';
import 'package:se7ety/core/utils/app_colors.dart';
import 'package:se7ety/core/utils/text_style.dart';
import 'package:se7ety/features/intro/welcom.dart';
import 'package:se7ety/features/on_boarding/on_boarding_model.dart';
import 'package:se7ety/features/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController controller = PageController();
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              context.pushReplacement(Welcom());
            },
            child: Text(
              "تخطي",
              style: getBodyTextStyle(context, color: AppColors.primaryColor),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller,
                itemCount: pages.length,
                onPageChanged: (value) {
                  setState(() {
                    currentindex = value;
                  });
                },
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Spacer(),
                      SvgPicture.asset(
                        pages[index].image,
                        width: MediaQuery.sizeOf(context).width * 0.7,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                      Spacer(),
                      Text(
                        pages[index].title,
                        style: getTitleTextStyle(
                          context,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      Gap(20),
                      Text(
                        textAlign: TextAlign.center,
                        pages[index].body,
                        style: getSmallTextStyle(
                          context,
                          color: AppColors.darkcolor,
                        ),
                      ),
                      Spacer(flex: 2),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothPageIndicator(
                    controller: controller,
                    count: pages.length,
                    effect: WormEffect(
                      dotColor: AppColors.grey,
                      dotHeight: 8,
                      dotWidth: 16,
                      activeDotColor: AppColors.primaryColor,
                      spacing: 8,
                      offset: currentindex.toDouble(),
                    ), // your preferred effect
                    onDotClicked: (index) {
                      index++;
                    },
                  ),
                  if (currentindex == pages.length - 1)
                    CustomButton(
                      text: 'هيا بنا',
                      style: getBodyTextStyle(
                        context,
                        color: AppColors.white,
                        fontsize: 14,
                      ),
                      onPressed: () {
                        context.pushReplacement(Welcom());
                      },
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
