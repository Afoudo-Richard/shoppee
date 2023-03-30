import 'package:flutter/material.dart';
import 'package:shoppee/shoppee.dart';

class CustomCircle extends StatelessWidget {
  const CustomCircle({
    Key? key,
    this.child,
    this.color,
    this.radius,
    this.border,
    this.padding,
    this.margin,
    this.backgroundImage,
    this.boxShadow,
  }) : super(key: key);

  final Widget? child;
  final Color? color;
  final double? radius;
  final BoxBorder? border;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final DecorationImage? backgroundImage;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Container(
        clipBehavior: Clip.hardEdge,
        width: radius,
        height: radius,
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color ?? primaryColor,
          border: border,
          image: backgroundImage,
          boxShadow: boxShadow,
        ),
        child: child,
      ),
    );
  }
}
