import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppee/shoppee.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomInput(
            border: Border.all(width: 0),
            borderRadius: BorderRadius.all(
              Radius.circular(15.sp),
            ),
            backgroundColor: Colors.white,
            leading: SvgPicture.asset(
              'assets/images/search.svg',
              height: 12.sp,
              width: 12.sp,
              color: secondaryColor,
            ),
            inputHintText: "Search",
          ),
        ),
        2.w.pw,
        CustomCircle(
          padding: EdgeInsets.all(9.sp),
          color: secondaryColor,
          child: SvgPicture.asset(
            'assets/images/qr_code.svg',
            height: 12.sp,
            width: 12.sp,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
