import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppee/shoppee.dart';

class BestSalerSection extends StatelessWidget {
  const BestSalerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          title: 'Best Seller',
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
        // GridView.builder(
        //   physics: const NeverScrollableScrollPhysics(),
        //   shrinkWrap: true,
        //   itemCount: products.length,
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 2,
        //     childAspectRatio: 0.54.sp,
        //     crossAxisSpacing: 10.sp,
        //     mainAxisSpacing: 10.sp,
        //   ),
        //   itemBuilder: (BuildContext context, int index) {
        //     final product = products[index];
        //     return ProductItem(
        //       product: product,
        //     );
        //   },
        // ),
        MasonryGridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          mainAxisSpacing: 10.sp,
          crossAxisSpacing: 10.sp,
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            final product = products[index];
            return ProductItem(
              product: product,
            );
          },
        ),
        // ListView.separated(
        //   physics: const NeverScrollableScrollPhysics(),
        //   shrinkWrap: true,
        //   itemBuilder: (context, index) {
        //     return CustomContainer(
        //       padding:
        //           EdgeInsets.only(left: 10.sp, right: 10.sp, bottom: 10.sp),
        //       child: Stack(
        //         children: [
        //           Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               SizedBox(
        //                 child: Image.asset(
        //                   "assets/images/logo.png",
        //                 ),
        //               ),
        //               Row(
        //                 children: [
        //                   Text(
        //                     r"$1047",
        //                     style: TextStyle(
        //                       fontSize: 16.sp,
        //                       color: primaryColor,
        //                       fontWeight: FontWeight.bold,
        //                     ),
        //                   ),
        //                   3.w.pw,
        //                   Text(
        //                     r"$1047",
        //                     style: TextStyle(
        //                       fontSize: 10.sp,
        //                       color: Colors.grey,
        //                       decoration: TextDecoration.lineThrough,
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //               1.h.ph,
        //               Text(
        //                 'Samsung Galaxy s20 Ultra',
        //                 style: TextStyle(
        //                   fontSize: 12.sp,
        //                 ),
        //               ),
        //             ],
        //           ),
        //           Positioned(
        //             top: 5,
        //             right: 5,
        //             child: CustomCircle(
        //               padding: EdgeInsets.all(10.sp),
        //               color: Colors.white,
        //               child: SvgPicture.asset(
        //                 'assets/images/heart.svg',
        //                 height: 12.sp,
        //                 width: 12.sp,
        //                 color: secondaryColor,
        //               ),
        //               boxShadow: const [
        //                 BoxShadow(
        //                   color: Colors.black12,
        //                   blurRadius: 40,
        //                   spreadRadius: 10,
        //                   offset: Offset(0, 4),
        //                 ),
        //               ],
        //             ),
        //           )
        //         ],
        //       ),
        //     );
        //   },
        //   separatorBuilder: (context, index) {
        //     return 4.h.ph;
        //   },
        //   itemCount: 3,
        // ),
      ],
    );
  }
}
