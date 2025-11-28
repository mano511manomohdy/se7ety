import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:se7ety/core/constants/assets.dart';
import 'package:se7ety/core/extenstions/navigator.dart';
import 'package:se7ety/core/functions/validation.dart';
import 'package:se7ety/core/utils/app_colors.dart';
import 'package:se7ety/core/utils/text_style.dart';
import 'package:se7ety/features/auth/presentation/ui_screens/login.dart';
import 'package:se7ety/features/auth/presentation/widgets/custom_text_form.dart';
import 'package:se7ety/features/widgets/custom_button.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emaiController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AssetsIcons.logo,
              fit: BoxFit.cover,
              width: width * 0.5,
              height: height * 0.4,
            ),
            Text(
              "انساء حساب الان",
              style: getBodyTextStyle(
                context,
                color: AppColors.primaryColor,
                fontsize: 18,
              ),
            ),
            Gap(20),
            CustomTextForm(
              prefix: Icon(Icons.person, color: AppColors.primaryColor),
              controller: emaiController,
              title: 'الاسم',
              validator: (value) => isValidName(value!) ? null : 'Invalid name',
            ),
            Gap(15),
            CustomTextForm(
              prefix: Icon(Icons.email, color: AppColors.primaryColor),
              controller: emaiController,
              title: 'الايميل',
              validator: (value) =>
                  isValidEmail(value!) ? null : 'Invalid email',
            ),
            Gap(15),
            CustomTextForm(
              ispassword: true,
              // suffix: Icon(Icons.eye,color: AppColors.primaryColor,),
              prefix: Icon(Icons.lock, color: AppColors.primaryColor),
              controller: passwordController,
              title: 'كلمةالسر',
              validator: (value) =>
                  isValidPassword(value!) ? null : 'Invalid password',
            ),
            Gap(height * 0.05),
            CustomButton(
              foColor: AppColors.white,
              bgColor: AppColors.primaryColor,
              onPressed: () {},
              text: "تسجيل دخول",
              style: getBodyTextStyle(context),
              fixedSize: Size(width - 44, height * 0.05),
            ),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("ليس لديك حساب ؟", style: getSmallTextStyle(context)),
                TextButton(
                  onPressed: () {
                    context.pushReplacement(Login());
                  },
                  child: Text(
                    "سجل الان",
                    style: getSmallTextStyle(
                      context,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
