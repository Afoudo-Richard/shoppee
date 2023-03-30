import 'package:flutter/material.dart';
import 'package:shoppee/shoppee.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const SplashPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Stack(
          children: [
            CustomCircle(
              radius: 20.sp,
              color: secondaryColor,
            ),
            Text(
              'Shoppee',
            ),
          ],
        ),
      ),
    );
  }
}
