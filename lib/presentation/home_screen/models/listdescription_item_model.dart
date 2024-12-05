import 'package:equatable/equatable.dart';

/// This class is used in the listdescription_item_widget screen.
// ignore_for_file: must-be-immutable
// ignore: must_be_immutable
class ListdescriptionItemModel extends Equatable {
  ListdescriptionItemModel({this.description, this.id}) {
    description = description ??
        "Computer Science - Pakuan University\nYear of 2022 - Present";
    id = id ?? "";
  }

  String? description;
  String? id;

  ListdescriptionItemModel copyWith({
    String? description,
    String? id,
  }) {
    return ListdescriptionItemModel(
      description: description ?? this.description,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [description, id];
}
