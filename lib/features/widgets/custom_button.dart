import 'package:flutter/material.dart';
import 'package:se7ety/core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.style,
    this.onPressed,
    this.fixedSize,
    this.bgColor,
    this.foColor,
  });
  final String text;
  final TextStyle? style;
  final void Function()? onPressed;
  final Color? bgColor;
  final Color? foColor;
  final Size? fixedSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: fixedSize,
        backgroundColor: bgColor ?? AppColors.primaryColor,
        foregroundColor: foColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(
        text,
        style: style?.copyWith(color: foColor) ?? TextStyle(color: foColor),
      ),
    );
  }
}
