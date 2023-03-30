import 'package:flutter/material.dart';
import 'package:shoppee/shoppee.dart';

class LocationFilterAppBar extends StatelessWidget {
  const LocationFilterAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        2.h.ph,
        Padding(
          padding: pagePadding,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_pin,
                    color: secondaryColor,
                    size: 12.sp,
                  ),
                  2.w.pw,
                  Text(
                    "Zinhuatonego, Gro",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 12.sp,
                    ),
                  ),
                  Icon(
                    Icons.expand_more_rounded,
                    color: Colors.grey,
                    size: 12.sp,
                  ),
                ],
              ),
              Positioned(
                right: 0,
                child: GestureDetector(
                  child: Icon(
                    Icons.filter_alt,
                    color: Colors.grey,
                    size: 12.sp,
                  ),
                  onTap: () {
                    showModalBottomSheet(
                      barrierColor: primaryColor.withOpacity(0.7),
                      isScrollControlled: true,
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.sp),
                      ),
                      clipBehavior: Clip.hardEdge,
                      builder: (ctx) {
                        return const FilterBottomSheet();
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
