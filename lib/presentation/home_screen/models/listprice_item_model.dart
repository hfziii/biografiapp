import 'package:equatable/equatable.dart';

/// This class is used in the [listprice_item_widget] screen.
// ignore_for_file: must_be_immutable
class ListpriceItemModel extends Equatable {
  ListpriceItemModel({
    this.price,
    this.id,
  }) {
    price = price ??
        "PHP";
    id = id ?? "";
  }

  String? price;
  String? id;

  ListpriceItemModel copyWith({
    String? price,
    String? id,
  }) {
    return ListpriceItemModel(
      price: price ?? this.price,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [price, id];
}
