import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listgrid_one_item_model.dart';

// ignore_for_file: must_be_immutable
class ListgridOneItemWidget extends StatelessWidget {
  ListgridOneItemWidget(this.listgridOneItemModelobj, {Key? key}) : super(key: key);

  ListgridOneItemModel listgridOneItemModelobj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgOrg,
          height: 30.h,
          width: 30.h,
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(bottom: 4.h),
        ),
        Container(
          width: 124.h,
          margin: EdgeInsets.only(left: 18.h),
          child: Text(
            listgridOneItemModelobj.description!,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
