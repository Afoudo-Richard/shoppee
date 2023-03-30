import 'package:flutter/material.dart';
import 'package:shoppee/shoppee.dart';
import 'package:sizer/sizer.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.sp),
          topRight: Radius.circular(20.sp),
        ),
      ),
      child: Padding(
        padding: pagePadding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            2.h.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  padding: EdgeInsets.symmetric(
                    vertical: 5.sp,
                    horizontal: 5.sp,
                  ),
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Filter Options",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                CustomButton(
                  backgroundColor: secondaryColor,
                  child: Text(
                    "Done",
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            2.h.ph,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Brand",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                1.h.ph,
                CustomInput(
                  border: Border.all(width: 0),
                  // borderRadius: BorderRadius.all(
                  //   Radius.circular(15.sp),
                  // ),
                  backgroundColor: Colors.white,
                  trailing: Icon(
                    Icons.expand_more_rounded,
                    color: Colors.grey,
                    size: 15.sp,
                  ),
                  inputHintText: "Brand",
                ),
              ],
            ),
            2.h.ph,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Price",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                1.h.ph,
                CustomInput(
                  border: Border.all(width: 0),
                  // borderRadius: BorderRadius.all(
                  //   Radius.circular(15.sp),
                  // ),
                  backgroundColor: Colors.white,
                  trailing: Icon(
                    Icons.expand_more_rounded,
                    color: Colors.grey,
                    size: 15.sp,
                  ),
                  inputHintText: "\$300 - \$500",
                ),
              ],
            ),
            2.h.ph,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Size",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                1.h.ph,
                CustomInput(
                  border: Border.all(width: 0),
                  // borderRadius: BorderRadius.all(
                  //   Radius.circular(15.sp),
                  // ),
                  backgroundColor: Colors.white,
                  trailing: Icon(
                    Icons.expand_more_rounded,
                    color: Colors.grey,
                    size: 15.sp,
                  ),
                  inputHintText: "4.5 to 5.5 inches",
                ),
              ],
            ),
            4.h.ph,
          ],
        ),
      ),
    );
  }
}
