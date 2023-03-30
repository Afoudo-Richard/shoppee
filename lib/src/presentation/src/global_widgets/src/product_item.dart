import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppee/shoppee.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, ProductDetailPage.route(product));
      },
      child: CustomContainer(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 100.w,
                  height: 18.h,
                  child: Image.asset(
                    "assets/images/${product.thumbNail}",
                  ),
                ),
                1.h.ph,
                Padding(
                  padding:
                      EdgeInsets.only(left: 5.sp, right: 5.sp, bottom: 2.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "\$${product.price}",
                            style: TextStyle(
                              fontSize: 13.sp,
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          3.w.pw,
                          product.priceBefore != null
                              ? Text(
                                  "\$ ${product.priceBefore}",
                                  style: TextStyle(
                                    fontSize: 9.sp,
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                )
                              : const SizedBox.shrink(),
                        ],
                      ),
                      0.5.h.ph,
                      Text(
                        product.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 11.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 4,
              right: 4,
              child: CustomCircle(
                padding: EdgeInsets.all(8.sp),
                color: Colors.white,
                child: SvgPicture.asset(
                  'assets/images/heart.svg',
                  height: 12.sp,
                  width: 12.sp,
                  color: secondaryColor,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(61, 0, 0, 0),
                    blurRadius: 60,
                    spreadRadius: 40,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
