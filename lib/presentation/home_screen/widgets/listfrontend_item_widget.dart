import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listfrontend_item_model.dart';

// ignore_for_file: must_be_immutable
class ListfrontendItemWidget extends StatelessWidget {
  ListfrontendItemWidget(this.listfrontendItemModelobj, {Key? key}) : super(key: key);

  ListfrontendItemModel listfrontendItemModelobj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgWork,
          height: 30.h,
          width: 38.h,
        ),
        SizedBox(width: 18.h),
        Text(
          listfrontendItemModelobj.frontend!,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.bodySmall,
        ),
      ],
    );
  }
}
