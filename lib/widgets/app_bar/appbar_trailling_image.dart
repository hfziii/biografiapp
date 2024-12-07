import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppbarTraillingImage extends StatelessWidget{
  AppbarTraillingImage(
    {Key? key,
      this.imagePath,
      this.height,
      this.onTap,
      this.margin,
      this.width})
      : super(
          key: key,
        );
  final double? height;
  final double? width;
  final String? imagePath;
  final Function? onTap;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        onTap: () {
          onTap?.call();
        },
        child: CustomImageView(
          imagePath: imagePath!,
          height: height ?? 16.h,
          width: width ?? 20.h,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}