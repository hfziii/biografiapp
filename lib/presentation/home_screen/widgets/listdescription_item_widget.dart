import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listdescription_item_model.dart';

// ignore_for_file: must_be_immutable
class ListdescriptionItemWidget extends StatelessWidget {
  ListdescriptionItemWidget(this.ListdescriptionItemModelObj, {Key? key}) : super(key: key);

  ListdescriptionItemModel ListdescriptionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEdu,
          height: 30.h,
          width: 30.h,
        ),
        SizedBox(width: 18.h),
        Text(
          ListdescriptionItemModelObj.description!,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.bodySmall,
        ),
      ],
    );
  }
}
