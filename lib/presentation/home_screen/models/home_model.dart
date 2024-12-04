import 'package:equatable/equatable.dart';
import 'listdescription_item_model.dart';
import 'listdigital_item_model.dart';
import 'listfrontend_item_model.dart';
import 'listgrid_one_item_model.dart';
import 'listprice_item_model.dart';

class HomeModel extends Equatable {
  HomeModel(
      {this.listdescriptionItemList = const [],
      this.listpriceItemList = const [],
      this.listfrontendItemList = const [],
      this.listgridOneItemList = const [],
      this.listdigitalItemList = const []});

  List<ListdescriptionItemModel> listdescriptionItemList;
  List<ListpriceItemModel> listpriceItemList;
  List<ListfrontendItemModel> listfrontendItemList;
  List<ListgridOneItemModel> listgridOneItemList;
  List<ListdigitalItemModel> listdigitalItemList;

  HomeModel copyWith({
    List<ListdescriptionItemModel>? listdescriptionItemList,
    List<ListpriceItemModel>? listpriceItemList,
    List<ListfrontendItemModel>? listfrontendItemList,
    List<ListgridOneItemModel>? listgridOneItemList,
    List<ListdigitalItemModel>? listdigitalItemList,
  }) {
    return HomeModel(
      listdescriptionItemList:
          listdescriptionItemList ?? this.listdescriptionItemList,
      listpriceItemList: listpriceItemList ?? this.listpriceItemList,
      listfrontendItemList: listfrontendItemList ?? this.listfrontendItemList,
      listgridOneItemList: listgridOneItemList ?? this.listgridOneItemList,
      listdigitalItemList: listdigitalItemList ?? this.listdigitalItemList,
    );
  }

  @override
  List<Object> get props => [
        listdescriptionItemList,
        listpriceItemList,
        listfrontendItemList,
        listgridOneItemList,
        listdigitalItemList
      ];
}
