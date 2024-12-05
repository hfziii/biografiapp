import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listdigital_item_model.dart';

// ignore_for_file: must_be_immutable
class ListdigitalItemWidget extends StatelessWidget {
  ListdigitalItemWidget(this.listdigitalItemModel0bj, {Key? key}) : super(key: key);

  ListdigitalItemModel listdigitalItemModel0bj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgCertif,
          height: 30.h,
          width: 30.h,
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(bottom: 4.h),
        ),
        Container(
          width: 132.h,
          margin: EdgeInsets.only(left: 18.h),
          child: Text(
            listdigitalItemModel0bj.digital!,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
