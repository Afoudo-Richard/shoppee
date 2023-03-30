import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppee/shoppee.dart';
import 'package:sizer/sizer.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.sp,
      padding: EdgeInsets.symmetric(horizontal: 25.sp, vertical: 0),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 16,
            spreadRadius: 0,
            offset: Offset(0, -8),
          ),
        ],
        color: primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.sp),
          topRight: Radius.circular(20.sp),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomNavItem(
                active: true,
                text: "Explorer",
                onTap: () {},
                isExplorer: true,
              ),
              BottomNavItem(
                active: false,
                icon: "assets/images/shopping_bag.svg",
                text: "Favorite",
                onTap: () {
                  Navigator.push(context, CartPage.route());
                  print("I was clicked");
                },
              ),
              BottomNavItem(
                active: false,
                icon: "assets/images/heart.svg",
                text: "Explore",
                onTap: () {},
              ),
              BottomNavItem(
                active: false,
                icon: "assets/images/user.svg",
                text: "Explore",
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String? icon;
  final String text;
  final bool active;
  final void Function() onTap;
  final bool isExplorer;

  const BottomNavItem({
    super.key,
    this.icon,
    required this.text,
    required this.active,
    required this.onTap,
    this.isExplorer = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(
            SizerUtil.deviceType == DeviceType.mobile ? 5.sp : 9.sp),
        decoration: BoxDecoration(
          // color: active ? Color(0XFFEEECED) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          // border: active ? Border.all(color: secondaryColor) : null,
        ),
        child: isExplorer
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomCircle(
                    radius: 4.sp,
                    color: secondaryColor,
                  ),
                  2.w.pw,
                  Text(
                    "Explore",
                    style: TextStyle(
                      color: active ? secondaryColor : Colors.white,
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              )
            : SvgPicture.asset(
                icon!,
                height: 15.sp,
                width: 15.sp,
                color: active ? secondaryColor : Colors.white,
              ),
      ),
    );
  }
}
