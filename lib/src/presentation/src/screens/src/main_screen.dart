import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppee/shoppee.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const MainScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // drawer: const AppDrawer(),
      backgroundColor: Color(0XFFE5E5E5),
      body: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: pagePadding,
            child: Column(
              children: [
                const LocationFilterAppBar(),
                3.h.ph,
                SectionHeader(
                  title: 'Select Category',
                  trailing: Text(
                    "View all",
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: secondaryColor),
                  ),
                ),
                const CategoryList(),
                3.h.ph,
                const SearchSection(),
                3.h.ph,
                const HotSalesSection(),
                3.h.ph,
                const BestSalerSection(),
                4.h.ph,
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
