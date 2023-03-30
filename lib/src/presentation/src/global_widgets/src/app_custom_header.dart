import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppee/shoppee.dart';
import 'package:sizer/sizer.dart';

class AppCustomHeader extends StatelessWidget {
  final Widget? leading;
  final Widget? trailing;
  final String? title;

  const AppCustomHeader({
    super.key,
    this.leading,
    this.trailing,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        leading ??
            CustomContainer(
              backgroundColor: primaryColor,
              padding: EdgeInsets.symmetric(
                vertical: 5.sp,
                horizontal: 5.sp,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.chevron_left,
                  color: Colors.white,
                ),
              ),
            ),
        title != null
            ? Text(
                title!,
                style: TextStyle(
                  fontSize: 15.sp,
                  color: primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              )
            : const SizedBox.shrink(),
        trailing ??
            CustomContainer(
              backgroundColor: secondaryColor,
              child: SvgPicture.asset(
                'assets/images/shopping_bag.svg',
                height: 15.sp,
                width: 15.sp,
                color: Colors.white,
              ),
            ),
      ],
    );
  }
}
