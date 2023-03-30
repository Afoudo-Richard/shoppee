import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppee/shoppee.dart';
import 'package:shoppee/src/presentation/src/global_widgets/src/app_custom_header.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const CartPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            1.h.ph,
            Padding(
              padding: pagePadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppCustomHeader(
                    trailing: Row(
                      children: [
                        Text(
                          'Add address',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        1.w.pw,
                        CustomContainer(
                          backgroundColor: secondaryColor,
                          child: SvgPicture.asset(
                            'assets/images/phone.svg',
                            height: 15.sp,
                            width: 15.sp,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  4.h.ph,
                  Text(
                    'My Cart',
                    style: TextStyle(
                      fontSize: 22.sp,
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  4.h.ph,
                ],
              ),
            ),
            Expanded(
              child: CustomContainer(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.sp),
                  topRight: Radius.circular(20.sp),
                ),
                width: 100.w,
                backgroundColor: primaryColor,
                child: Padding(
                  padding: pagePadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      3.h.ph,
                      Expanded(
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            final product = products[index];
                            return CartItem(product: product);
                          },
                          separatorBuilder: (context, index) {
                            return 2.h.ph;
                          },
                          itemCount: products.length,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Divider(
                            color: Colors.grey,
                          ),
                          1.h.ph,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                '\$1200',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          1.h.ph,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Delivery',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                'Free',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          1.h.ph,
                          Divider(
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      2.h.ph,
                      SizedBox(
                        width: 100.w,
                        child: CustomButton(
                          backgroundColor: secondaryColor,
                          child: Text(
                            'Checkout',
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      1.h.ph,
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final Product product;
  const CartItem({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.sp,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomContainer(
            padding: const EdgeInsets.all(0),
            width: 80.sp,
            height: 80.sp,
            child: Image.asset(
              "assets/images/${product.thumbNail}",
              width: 100.w,
              height: 100.h,
              fit: BoxFit.cover,
            ),
          ),
          2.w.pw,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                1.h.ph,
                Text(
                  products[0].price.toString(),
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: secondaryColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          2.w.pw,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomContainer(
                backgroundColor: Color.fromARGB(88, 255, 255, 255),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '-',
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      '3',
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '+',
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          2.w.pw,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomContainer(
                backgroundColor: Colors.red,
                child: SvgPicture.asset(
                  'assets/images/delete_bin.svg',
                  height: 12.sp,
                  width: 12.sp,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
