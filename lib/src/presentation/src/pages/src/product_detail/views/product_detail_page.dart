import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppee/shoppee.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;
  const ProductDetailPage({
    super.key,
    required this.product,
  });

  static Route route(Product product) {
    return MaterialPageRoute<void>(
        builder: (_) => ProductDetailPage(
              product: product,
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: pagePadding,
          child: Stack(
            children: [
              Column(
                children: [
                  7.h.ph,
                  Expanded(
                    child: CustomContainer(
                      padding: EdgeInsets.zero,
                      backgroundColor: primaryColor,
                      child: InfiniteCarousel.builder(
                        itemCount: 5,
                        itemExtent: 250,
                        center: true,
                        anchor: 0.9,
                        velocityFactor: 0.2,
                        onIndexChanged: (index) {},
                        // controller: controller,
                        axisDirection: Axis.horizontal,
                        loop: true,
                        itemBuilder: (context, itemIndex, realIndex) {
                          return Image.asset(
                            "assets/images/${product.thumbNail}",
                            fit: BoxFit.cover,
                          );
                        },
                      ),
                    ),
                  ),
                  1.h.ph,
                  CustomContainer(
                    height: 55.h,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product.name,
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: primaryColor,
                                  ),
                                ),
                                0.5.h.ph,
                                RatingBar.builder(
                                  initialRating: 3,
                                  ignoreGestures: true,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  itemCount: 5,
                                  itemSize:
                                      SizerUtil.deviceType == DeviceType.mobile
                                          ? 15.sp
                                          : 7.5.sp,
                                  itemPadding: const EdgeInsets.symmetric(
                                      horizontal: 2.0),
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {},
                                ),
                              ],
                            ),
                            CustomContainer(
                              child: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                              backgroundColor: primaryColor,
                            ),
                          ],
                        ),
                        2.h.ph,
                        Expanded(
                          child: DefaultTabController(
                            length: 3,
                            child: Scaffold(
                              backgroundColor: Colors.white,
                              appBar: AppBar(
                                backgroundColor: Colors.white,
                                automaticallyImplyLeading: false,
                                title: TabBar(
                                  indicatorColor: secondaryColor,
                                  tabs: [
                                    Text(
                                      "Shop",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: primaryColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Details",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: primaryColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Features",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: primaryColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              body: TabBarView(
                                children: [
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              2.h.ph,
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: const [
                                                  PhoneDetailInfo(
                                                    icon: 'processor.svg',
                                                    text: 'Exynos 990',
                                                  ),
                                                  PhoneDetailInfo(
                                                    icon: 'camera.svg',
                                                    text: '108 + 12 mp',
                                                  ),
                                                  PhoneDetailInfo(
                                                    icon: 'phone_ram.svg',
                                                    text: '8 GB',
                                                  ),
                                                  PhoneDetailInfo(
                                                    icon: 'memory.svg',
                                                    text: '256 GB',
                                                  ),
                                                ],
                                              ),
                                              2.h.ph,
                                              Text(
                                                "Select color and capacity",
                                                style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: primaryColor,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              2.h.ph,
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      CustomCircle(
                                                        radius: 25.sp,
                                                        color:
                                                            Color(0XFF772D03),
                                                        child: Icon(
                                                          Icons.expand_more,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      3.w.pw,
                                                      CustomCircle(
                                                        radius: 25.sp,
                                                        color: Color.fromARGB(
                                                            255, 18, 28, 170),
                                                        child: Icon(
                                                          Icons.expand_more,
                                                          color: Colors.white,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      CustomContainer(
                                                        boxShadow: [],
                                                        backgroundColor:
                                                            secondaryColor,
                                                        child: Text(
                                                          '128 GB',
                                                          style: TextStyle(
                                                            fontSize: 10.sp,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                      2.w.pw,
                                                      Text(
                                                        '64 GB',
                                                        style: TextStyle(
                                                          fontSize: 10.sp,
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Text("Tab 2"),
                                  ),
                                  Container(
                                    child: Text("Tab 3"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        1.h.ph,
                        SizedBox(
                          width: 100.w,
                          child: CustomButton(
                            backgroundColor: secondaryColor,
                            child: Text(
                              'Add to Cart \$1,500',
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        1.h.ph,
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  1.h.ph,
                  const AppCustomHeader(
                    title: "Product Details",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PhoneDetailInfo extends StatelessWidget {
  final String icon;
  final String text;

  const PhoneDetailInfo({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          'assets/images/$icon',
          height: 15.sp,
          width: 15.sp,
          color: Colors.grey,
        ),
        0.5.h.ph,
        Text(
          text,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 9.sp,
          ),
        ),
      ],
    );
  }
}
