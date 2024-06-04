import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:mulytic_challange/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final bool? isCountryPicker;
  final TextEditingController? txtController;
  final String? hintText;
  final IconData? prefixIcon;
  final String? title;
  final Color? titleColor;
  final Widget? suffixWidget;
  final bool? obscureText;
  final String? initialvalue;
  final bool? isEnable;
  final double? height;
  final bool? disableField;
  final String? Function(String?)? validator;
  final int? maxLine;
  final bool? isDropdown;
  final List<DropdownMenuItem<String>>? dropDownItems;
  final double? maxheight;
  final Function(String?)? onchange;
  final TextInputType? keyboardType;
  final double? fieldWidth;
  const CustomTextField({
    super.key,
    this.txtController,
    this.hintText,
    this.prefixIcon,
    this.title,
    this.titleColor,
    this.isCountryPicker,
    this.suffixWidget,
    this.obscureText,
    this.initialvalue,
    this.isEnable,
    this.validator,
    this.height,
    this.disableField = false,
    this.maxLine,
    this.isDropdown = false,
    this.dropDownItems,
    this.maxheight,
    this.onchange,
    this.keyboardType,
    this.fieldWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Text(
            title!,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: titleColor ?? AppColors.blackColor,
                ),
          ),
        SizedBox(
          height: Get.height * 0.01,
        ),
        Container(
          height: height ?? 40.h,
          width: fieldWidth ?? Get.width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.greyColor2.withOpacity(0.2),
            borderRadius: BorderRadius.circular(4.r),
          ),
          child: isDropdown!
              ? DropdownButtonFormField2<String>(
                  value: txtController?.text,
                  items: dropDownItems,
                  onChanged: onchange,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
                    suffixIcon: suffixWidget,
                    hintText: hintText,
                    hintStyle: Theme.of(context).textTheme.bodyLarge,
                    border: InputBorder.none,
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  dropdownStyleData: DropdownStyleData(
                    maxHeight: maxheight,
                  ),
                )
              : TextFormField(
                  controller: txtController,
                  initialValue: initialvalue,
                  obscureText: obscureText ?? false,
                  enabled: isEnable ?? true,
                  keyboardType: keyboardType ?? TextInputType.text,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
                    suffixIcon: suffixWidget,
                    hintText: hintText,
                    enabled: disableField!
                        ? true
                        : isCountryPicker ?? false
                            ? false
                            : true,
                    labelStyle: Theme.of(context).textTheme.bodyLarge,
                    border: InputBorder.none,
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  validator: validator,
                  maxLines: maxLine ?? 1,
                ),
        ),
      ],
    );
  }
}
