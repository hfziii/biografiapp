import 'package:equatable/equatable.dart';

/// This class is used in the [listfrontend_item_widget] screen.
// ignore_for_file: must_be_immutable
class ListfrontendItemModel extends Equatable {
  ListfrontendItemModel({
    this.frontend,
    this.id,
  }) {
    frontend = frontend ??
        "Frontend Developer (Part Time)\nExenesia\nYear of 2023";
    id = id ?? "";
  }

  String? frontend;
  String? id;

  ListfrontendItemModel copyWith({
    String? frontend,
    String? id,
  }) {
    return ListfrontendItemModel(
      frontend: frontend ?? this.frontend,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [frontend, id];
}
