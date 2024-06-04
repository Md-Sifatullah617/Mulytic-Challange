import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mulytic_challange/utils/colors.dart';

class CustomCheckBoxListTile extends StatelessWidget {
  final BoxShape? boxShape;
  final String? title;
  final Widget? leading;
  late bool? isActive;
  final Function(bool)? onTap;
  CustomCheckBoxListTile({
    super.key,
    this.boxShape,
    this.title,
    this.onTap,
    this.isActive = false,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        isActive = !isActive!;
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Get.height * 0.004),
        child: Row(
          children: [
            Container(
              width: Get.width * 0.05,
              height: Get.width * 0.05,
              decoration: BoxDecoration(
                  color: boxShape == BoxShape.rectangle
                      ? isActive == true
                          ? AppColors.primaryColor
                          : AppColors.greyColor
                      : AppColors.greyColor,
                  shape: boxShape ?? BoxShape.circle,
                  borderRadius: boxShape == BoxShape.rectangle
                      ? BorderRadius.circular(5)
                      : null,
                  border: Border.all(
                    color: isActive!
                        ? AppColors.primaryColor
                        : AppColors.greyColor2,
                  )),
              child: Center(
                child: Icon(
                  boxShape == BoxShape.rectangle ? Icons.check : Icons.circle,
                  color: isActive!
                      ? boxShape == BoxShape.rectangle
                          ? AppColors.whiteColor
                          : AppColors.primaryColor
                      : AppColors.whiteColor,
                  size: Get.width * 0.04,
                ),
              ),
            ),
            SizedBox(
              width: Get.width * 0.02,
            ),
            leading ?? Container(),
            SizedBox(
              width: Get.width * 0.02,
            ),
            Text(title!,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: AppColors.blackColor,
                    )),
          ],
        ),
      ),
    );
  }
}
