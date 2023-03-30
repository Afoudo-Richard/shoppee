import 'package:flutter/material.dart';
import 'package:shoppee/shoppee.dart';

class HotSalesSection extends StatelessWidget {
  const HotSalesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          title: 'Hot Sales',
          trailing: Text(
            "See all",
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              color: secondaryColor,
            ),
          ),
        ),
        3.h.ph,
        CustomContainer(
          padding: EdgeInsets.zero,
          width: 100.w,
          height: 150.sp,
          backgroundColor: const Color(0XFF101010),
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset("assets/images/iphone_bg.png"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomCircle(
                      padding: EdgeInsets.all(6.sp),
                      color: secondaryColor,
                      child: Text(
                        "New",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8.sp,
                        ),
                      ),
                    ),
                    2.h.ph,
                    Text(
                      "Iphone 12",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    1.h.ph,
                    Text(
                      "Súper. Mega. Rápido.",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    2.h.ph,
                    CustomButton(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.sp,
                        vertical: 2.sp,
                      ),
                      backgroundColor: Colors.white,
                      child: Text(
                        "Buy Now",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 9.sp,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
