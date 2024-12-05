import 'package:equatable/equatable.dart';

/// This class is used in the [listgrid_one_item_widget] screen.
// ignore_for_file: must_be_immutable
class ListgridOneItemModel extends Equatable {
  ListgridOneItemModel({
    this.description,
    this.id,
  }) {
    description = description ??
        "Head of Web Division\r\nPPK Ormawa Unpak\r\nJune - October 2024";
    id = id ?? "";
  }

  String? description;
  String? id;

  ListgridOneItemModel copyWith({
    String? description,
    String? id,
  }) {
    return ListgridOneItemModel(
      description: description ?? this.description,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [description, id];
}
