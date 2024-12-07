import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listprice_item_model.dart';

// ignore_for_file: must_be_immutable
class ListpriceItemWidget extends StatelessWidget {
  ListpriceItemWidget(this.listpriceItemModel0bj, {Key? key}) : super(key: key);

  ListpriceItemModel listpriceItemModel0bj;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 18.h),
      child: Text(
        listpriceItemModel0bj.price!,
        overflow: TextOverflow.ellipsis,
        style: CustomTextStyles.bodySmall18,
      ),
    );
  }
}
