import 'package:flutter/material.dart';
import 'package:se7ety/core/utils/app_colors.dart';
import 'package:se7ety/core/utils/text_style.dart';

class CustomTextForm extends StatefulWidget {
  const CustomTextForm({
    super.key,
    this.validator,
    required this.title,
    this.ispassword = false,
    required this.controller,
    this.edgeInsets,
    this.suffix,
    this.prefix,
  });

  final String? Function(String?)? validator;
  final String title;
  final bool ispassword;
  final TextEditingController controller;
  final EdgeInsets? edgeInsets;
  final Widget? suffix;
  final Widget? prefix;

  @override
  State<CustomTextForm> createState() => _CustomTextFormState();
}

class _CustomTextFormState extends State<CustomTextForm> {
  bool _obscuretext = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        obscureText: widget.ispassword ? _obscuretext : false,
        decoration: InputDecoration(
          fillColor: AppColors.primaryColor.withOpacity(0.07),
          filled: true,
          contentPadding: widget.edgeInsets,
          prefixIcon: widget.prefix,
          suffixIcon: widget.ispassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      _obscuretext = !_obscuretext;
                    });
                  },
                  icon: Icon(
                    _obscuretext ? Icons.visibility_off : Icons.visibility,
                    color: AppColors.primaryColor,
                  ),
                )
              : widget.suffix,
          hint: Text(
            widget.title,
            style: getSmallTextStyle(
              context,
              fontWeight: FontWeight.w200,
              color: AppColors.grey,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.white, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.primaryColor, width: 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
