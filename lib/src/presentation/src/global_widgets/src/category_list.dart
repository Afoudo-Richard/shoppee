import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppee/shoppee.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        2.h.ph,
        SizedBox(
          height: 60.sp,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final category = categories[index];
              return CategoryItem(
                isActive: true,
                category: category,
              );
            },
            separatorBuilder: (context, index) {
              return 7.w.pw;
            },
            itemCount: categories.length,
          ),
        ),
      ],
    );
  }
}

class CategoryItem extends StatelessWidget {
  final bool isActive;
  final Category category;
  const CategoryItem({
    super.key,
    this.isActive = false,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCircle(
          radius: 45.sp,
          color: isActive ? secondaryColor : Colors.white,
          padding: EdgeInsets.all(10.sp),
          child: SvgPicture.asset(
            'assets/images/${category.image}',
            height: 12.sp,
            width: 12.sp,
            color: isActive ? Colors.white : Colors.grey,
          ),
        ),
        0.5.h.ph,
        Text(
          category.name,
          style: TextStyle(
            color: isActive ? secondaryColor : primaryColor,
            fontSize: 9.sp,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
